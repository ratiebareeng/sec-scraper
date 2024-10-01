import requests
import psycopg2
from psycopg2 import sql
import json

# Download url
ticker_lookup_url = "https://www.sec.gov/files/company_tickers.json"
cik_lookup_url = "https://www.sec.gov/Archives/edgar/cik-lookup-data.txt"

# Authentication headers: Provide a name and a contact email
headers = {
    "User-Agent": "NAME EMAIL",
    "Accept-Encoding": "gzip, deflate",
    "Host": "www.sec.gov",
    "Connection": "keep-alive"
}

# Configure PostgreSQL connection
db_connection = psycopg2.connect(
    host="localhost",
    database="DB-NAME",
    user="SERVER-USERNAME",
    password="SERVER-PASSWORD"
)

# Scrape CIK numbers from cik_lookup_url
def scrape_cik():
    # Send request
    response = requests.get(cik_lookup_url, headers=headers)

    # Process response
    if response.status_code == 200:
        data = response.text.splitlines()

        cursor = db_connection.cursor()

        # Drop the table if it exists
        cursor.execute("DROP TABLE IF EXISTS cik_lookup")

        # Create the table
        cursor.execute("""
            CREATE TABLE cik_lookup (
                cik_number INT,
                company_name TEXT
            )
        """)

        for line in data:
            if line:
                delimiter_count = line.count(":")
                company_cik_split = ""
                if delimiter_count > 2:
                    print('yes')
                else:
                    # Split the line on the last colon to get the CIK number
                    company_cik_split = line.split(":", 1)  # Split on the last colon

                if len(company_cik_split) == 2:
                    company_part = company_cik_split[0].strip()  # Everything before the last colon
                    cik_number = company_cik_split[1].strip(":")  # CIK number, remove any trailing colons

                    # Ensure both company name and CIK number are not empty
                    if company_part and cik_number:
                        try:
                            #print(f"Inserting: Company Name: '{company_part}', CIK Number: '{cik_number}'")
                            cursor.execute(
                                sql.SQL("INSERT INTO cik_lookup (cik_number, company_name) VALUES (%s, %s)"),
                                [cik_number, company_part]
                            )
                        except Exception as e:
                            print(f"Error inserting data: {e}")

        # Resource cleanup
        db_connection.commit()
        cursor.close()
        db_connection.close()
        print("scrape_cik :: Data imported successfully!")
    else:
        print(f"Failed to retrieve data: {response.status_code}")

# Scrape Company Tickers from ticker_lookup_url
def scrape_tickers():
    # Send request
    response = requests.get(ticker_lookup_url, headers=headers)

    # Process response
    if response.status_code == 200:
        data = json.loads(response.text)

        cursor = db_connection.cursor()

        # Drop the table if it exists
        cursor.execute("DROP TABLE IF EXISTS ticker_lookup")

        # Create the table
        cursor.execute("""
            CREATE TABLE ticker_lookup (
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
            cursor.execute(
                sql.SQL("INSERT INTO ticker_lookup (cik_number, ticker, title) VALUES (%s, %s, %s)"),
                [cik_number, ticker, title]
            )

        # Resource cleanup
        db_connection.commit()
        cursor.close()
        db_connection.close()
        print("ticker_lookup :: Data imported successfully!")
    else:
        print(f"Failed to retrieve data: {response.status_code}")


# Run scrapers
#scrape_cik()
#scrape_tickers()

