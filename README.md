# 🧠 Conversational SQL AI Model

A powerful NLP-based system that converts natural language questions into SQL queries using OpenAI's API. Designed for developers, analysts, and data scientists to simplify database interaction through everyday language.

---

## 🚀 Features

- 🔍 Ask questions in plain English and get accurate SQL queries
- 📦 Vector database support (Pinecone, ChromaDB, etc.)
- 🛠️ Streamlit frontend for user interaction
- 🧠 OpenAI-powered LLM backend
- 🔐 Secure environment variable usage via `.env` (excluded from Git)

---

## ⚙️ Setup Instructions

> Make sure you have Python 3.8+ installed


# 1. Clone the repository
```bash
git clone https://github.com/kurai-sx/Conversational-SQL-AI-Model.git
cd Conversational-SQL-AI-Model
```

# 2. Create and activate virtual environment
```bash
python -m venv venv
```
## On Windows:
```bash
venv\Scripts\activate
```
## On Mac/Linux:
```bash
source venv/bin/activate
```

# 3. Install dependencies
```bash
pip install -r requirements.txt
```

# 4. Add your OpenAI key to a .env file
```bash
echo OPENAI_API_KEY=your_openai_key > .env
```

# 5. Run the app (Streamlit example)
```bash
streamlit run app.py
```
