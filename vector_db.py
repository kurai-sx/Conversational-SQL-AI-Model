import os
from dotenv import load_dotenv
from openai import OpenAI
from pinecone import Pinecone, ServerlessSpec

load_dotenv()

client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))
pc = Pinecone(api_key=os.getenv("PINECONE_API_KEY"))

index_name = os.getenv("PINECONE_INDEX", "sql-agent-index")
if index_name not in pc.list_indexes().names(): 
    pc.create_index(
        name=index_name,
        dimension=1536,
        metric='cosine',
        spec=ServerlessSpec(cloud="aws", region=os.getenv("PINECONE_ENVIRONMENT"))
    )

index = pc.Index(index_name)


def get_openai_embedding(text):
    response = client.embeddings.create(
        input=[text],
        model="text-embedding-3-small"
    )
    return response.data[0].embedding


def index_static_knowledge():
    try:
        with open("nlp_questions.txt", "r") as f1, open("sample_queries.sql", "r") as f2:
            questions = [q.strip() for q in f1.readlines() if q.strip()]
            queries = [s.strip() for s in f2.readlines() if s.strip()]

        assert len(questions) == len(queries), "Mismatch in number of questions and SQL queries"
        items = []

        for i, (q, s) in enumerate(zip(questions, queries)):
            text = f"Q: {q.strip()}\nSQL: {s.strip()}"
            emb = get_openai_embedding(text)
            items.append({
                "id": f"static_{i}",
                "values": emb,
                "metadata": {"type": "static", "text": text}
            })

        index.upsert(items)
        print(f"✅ Indexed {len(items)} static pairs into Pinecone with OpenAI embeddings")
        return True

    except Exception as e:
        print(f"❌ Error: {e}")
        return False


def index_conversation_turn(user_id, q, sql, summary):
    text = f"Q: {q}\nSQL: {sql}\nSummary: {summary}"
    emb = get_openai_embedding(text)
    index.upsert([
        {
            "id": f"conv_{user_id}_{hash(q)}",
            "values": emb,
            "metadata": {"type": "memory", "user_id": user_id, "text": text}
        }
    ])


def semantic_search(query, k=8):
    emb = get_openai_embedding(query)
    results = index.query(vector=emb, top_k=k, include_metadata=True)
    return [match['metadata']['text'] for match in results['matches']]
