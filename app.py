# app.py
import streamlit as st
from rag_chain import answer_question
from db_connection import run_query
from datetime import datetime

st.set_page_config(page_title="🎓 University RAG Chatbot", layout="wide")

st.markdown("""
    <style>
        .block-container {
            padding-top: 1rem;
            padding-bottom: 2rem;
        }
        .stChatInput input {
            height: 3rem !important;
            font-size: 1.2rem;
        }
        .chat-left, .chat-right {
            padding: 0.75rem;
            margin: 0.5rem;
            font-size: 1.1rem;
            display: flex;
            align-items: flex-start;
        }
        .chat-left {
            justify-content: flex-start;
        }
        .chat-right {
            justify-content: flex-end;
        }
        .chat-avatar {
            font-size: 1.7rem;
            margin-right: 0.5rem;
            margin-left: 0.5rem;
        }
        .chat-bubble {
            max-width: 85%;
            padding: 0.75rem;
            border-radius: 10px;
            border: 1px solid #ddd;
            white-space: pre-wrap;
        }
        section[data-testid="stSidebar"] {
            height: 100vh;
            overflow-y: auto;
        }
    </style>
""", unsafe_allow_html=True)

st.title("🧠 University Q&A Assistant")

# Initialize session state
if 'chat_history' not in st.session_state:
    st.session_state.chat_history = []
if 'sql_history' not in st.session_state:
    st.session_state.sql_history = []
if 'sidebar_result' not in st.session_state:
    st.session_state.sidebar_result = None
if 'sidebar_result_title' not in st.session_state:
    st.session_state.sidebar_result_title = None
if 'user_input_buffer' not in st.session_state:
    st.session_state.user_input_buffer = None

# Sidebar
with st.sidebar:
    st.header("🧾 Query Log")
    if st.session_state.sql_history:
        for i, (q, sql) in enumerate(reversed(st.session_state.sql_history[-10:]), 1):
            with st.expander(f"{i}. {q[:50]}..."):
                st.code(sql, language="sql")
                if st.button(f"Run #{i}", key=f"run_{i}"):
                    try:
                        result = run_query(sql)
                        st.session_state.sidebar_result = result
                        st.session_state.sidebar_result_title = f"📊 Result of: {q}"
                    except Exception as e:
                        st.session_state.sidebar_result = [{"Error": str(e)}]
                        st.session_state.sidebar_result_title = f"❌ Failed: {q}"
    if st.session_state.sidebar_result_title and st.session_state.sidebar_result is not None:
        st.subheader(st.session_state.sidebar_result_title)
        st.dataframe(st.session_state.sidebar_result, use_container_width=True)

# Chat window
st.markdown("## 💬 Chat")
chat_container = st.container()
with chat_container:
    for sender, message in st.session_state.chat_history:
        if sender == "user":
            st.markdown(f'<div class="chat-left"><div class="chat-avatar">🧑</div><div class="chat-bubble">{message}</div></div>', unsafe_allow_html=True)
        else:
            st.markdown(f'<div class="chat-right"><div class="chat-bubble">{message}</div><div class="chat-avatar">🤖</div></div>', unsafe_allow_html=True)

# Bottom fixed input box
query = st.chat_input("Ask something about the university database...")

if query:
    # Clear any previous processing state
    st.session_state.user_input_buffer = None
    
    # Add new question to history
    st.session_state.chat_history.append(("user", query))
    
    # Process immediately
    response = answer_question(query)
    
    if isinstance(response, dict) and "error" in response:
        st.session_state.chat_history.append(("bot", f"{response['error']}"))
    else:
        answer = response.get("answer", "Here's the result.")
        sql = response.get("sql_query", "-- No SQL generated")
        st.session_state.chat_history.append(("bot", f"{answer}\n```sql\n{sql}\n```"))
        st.session_state.sql_history.append((query, sql))

    
    # Force UI update
    st.rerun()