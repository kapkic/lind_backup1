from psycopg2 import connect
import psycopg2
import click
import flask


    # Connect to an existing database
connection = psycopg2.connect(user="postgres",
                                 password="pynative@#29",
                                  host="127.0.0.1",
                                  port="80",
                                  database="postgres_db")

    # Create a cursor to perform database operations
cursor = connection.cursor()
   # Print PostgreSQL details
print("PostgreSQL server information")
print(connection.get_dsn_parameters(), "\n")
    # Executing a SQL query
cursor.execute("SELECT version();")
    # Fetch result
record = cursor.fetchone()
print("You are connected to - ", record, "\n")

if (connection):
    cursor.close()
    connection.close()
    print("PostgreSQL connection is closed")


#conn = psycopg2.connect("dbname=test user=postgres")
#cur = conn.cursor()
#cur.execute("SELECT * FROM my_data")
#records = cur.fetchall()

