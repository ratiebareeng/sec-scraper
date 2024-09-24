import requests
import psycopg2
from psycopg2 import sql
import json

# Download url
url = "https://www.sec.gov/files/company_tickers.json"

# Authentication headers: Provide a name and a contact email
headers = {
    "User-Agent": "Oratile Bareeng bareengbiz@gmail.com",
    "Accept-Encoding": "gzip, deflate",
    "Host": "www.sec.gov",
    "Connection": "keep-alive"
}

# Send request for url
response = requests.get(url, headers=headers)

# Process response
if response.status_code == 200:
    data = json.loads(response.text)

    # Connect to PostgreSQL
    conn = psycopg2.connect(
        host="localhost",
        database="midnight-demo",
        user="ratiebareeng",
        password="13-Aug-24"
    )
    cur = conn.cursor()

    # Drop the table if it exists
    cur.execute("DROP TABLE IF EXISTS sec_ticker_lookup")

    # Create the table
    cur.execute("""
        CREATE TABLE sec_ticker_lookup (
            cik_number INT,
            ticker TEXT,
            title TEXT
        )
    """)

    # Insert the data
    for _, cik_info in data.items():
        cik_number = cik_info["cik_str"]
        ticker = cik_info["ticker"]
        title = cik_info["title"]
        cur.execute(
            sql.SQL("INSERT INTO sec_ticker_lookup (cik_number, ticker, title) VALUES (%s, %s, %s)"),
            [cik_number, ticker, title]
        )

    # Resource cleanup
    conn.commit()
    cur.close()
    conn.close()
    print("Data imported successfully!")
else:
    print(f"Failed to retrieve data: {response.status_code}")