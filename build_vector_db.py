# build_vector_db.py — Upload static knowledge to Pinecone
from vector_db import index_static_knowledge

if __name__ == "__main__":
    print("🔧 Building vector DB from NLP and SQL files...")
    success = index_static_knowledge()
    if success:
        print("✅ Pinecone vector DB built successfully with static question-SQL pairs.")
    else:
        print("❌ Failed to build Pinecone vector DB.")