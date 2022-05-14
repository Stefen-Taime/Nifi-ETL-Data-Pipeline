import os
import psycopg2

conn = psycopg2.connect(
        host="localhost",
        database="aviation",
        user=os.environ['DB_USERNAME'],
        password=os.environ['DB_PASSWORD'])

# Open a cursor to perform database operations
cur = conn.cursor()

# Execute a command: this creates a new table
cur.execute('DROP TABLE IF EXISTS flights;')
cur.execute('CREATE TABLE flights (id SERIAL PRIMARY KEY,'
                                 ' fligh_date DATE NOT NULL,'
                                 'departure_airport VARCHAR(50) DEFAULT NULL,'
                                 'departure_timezone VARCHAR(50)  DEFAULT NULL,'
                                 'departure_IATA VARCHAR(50)  DEFAULT NULL,'
                                 'arrival_airport VARCHAR(50)  DEFAULT NULL,'
                                 'arrival_timezone VARCHAR(50)  DEFAULT NULL,'
                                 'arrival_IATA VARCHAR(50)  DEFAULT NULL,'
                                 'airline_name VARCHAR(50)  DEFAULT NULL );'
                                 )

# Insert data into the table
conn.commit()

cur.close()
conn.close()
