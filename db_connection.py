# db_connection.py
import mysql.connector
import os

def run_query(query):
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="suraj",
        database="university"
    )
    cursor = conn.cursor(dictionary=True)
    cursor.execute(query)
    result = cursor.fetchall()
    conn.close()
    return result
