# rag_chain.py — returns natural response + SQL for sidebar reuse
import os
from dotenv import load_dotenv
from openai import OpenAI
from vector_db import semantic_search, index_conversation_turn
from db_connection import run_query

load_dotenv()
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

SYSTEM_PROMPT = """
You are a SQL generation assistant.
You are provided with database schema knowledge and previous SQL samples for reference only.
Your task is to generate a valid SQL query for the user's question — do NOT copy context answers.
Always generate SQL dynamically, based on user input and schema understanding.
Return only raw SQL (no explanations, no markdown).
"""

SCHEMA_INFO = """
Available tables and columns:
- students(student_id, name, email, enrollment_date, department_id)
- departments(department_id, name)
- courses(course_id, title, credits, semester)
- professors(professor_id, name, email)
- course_assignments(course_id, professor_id)
- enrollments(enrollment_id, student_id, course_id)
- grades(grade_id, enrollment_id, grade)
"""

def build_prompt(question, memory_context=""):
    return f""" You are an intelligent SQL assistant. You must generate a valid SQL query based on the user question.

{SCHEMA_INFO}

Reference examples (do NOT copy directly):
{memory_context}

Question: {question}
Generate the SQL query below:
"""


def ask_llm_for_sql(prompt):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt}
        ]
    )
    return response.choices[0].message.content.strip()

def clean_sql(raw_sql):
    if raw_sql.startswith("```sql"):
        raw_sql = raw_sql.replace("```sql", "").replace("```", "").strip()
    return raw_sql

def answer_question(query, user_id="default_user"):
    try:
        context_chunks = semantic_search(query, k=6)
        memory_context = "\n---\n".join(context_chunks)
        prompt = build_prompt(query, memory_context)
        raw_sql = ask_llm_for_sql(prompt)
        sql = clean_sql(raw_sql)
        result = run_query(sql)

        index_conversation_turn(user_id, query, sql, f"Returned {len(result)} rows.")

        if not result:
            natural_response = f"Sorry, I couldn’t find any matching results for: \"{query}\""
        else:
            natural_response = f"Here are the results for: \"{query}\" — {len(result)} row(s) found."

        return {
            "answer": natural_response,
            "sql_query": sql,
            "result": result
        }

    except Exception as e:
        return {
            "error": f"❌ Error: {str(e)}",
            "sql_query": "-- failed SQL",
            "result": []
        }
