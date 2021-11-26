import pandas as pd
import mysql.connector as msql
from mysql.connector import Error
df = pd.read_csv (r'C:\Users\USER\Downloads\film.csv')   
df.head(10000000)

try:
    conn = msql.connect(host='localhost', user='root',  
                        password='')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("CREATE DATABASE MovieDB")
        print("MovieDB database is created")
except Error as e:
    print("Error while connecting to MySQL", e)


try:
    conn = msql.connect(host='localhost', 
                           database='MovieDB', user='root', 
                           password='')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)
        print('Creating table....')
        cursor.execute("CREATE TABLE movies (name text, Actor text, Actress text, Director text, Year text)")
        print("movies table is created....")
        for i,row in df.iterrows():
            sql = "INSERT INTO MovieDB.movies VALUES (%s,%s,%s,%s,%s)"
            cursor.execute(sql, tuple(row))
            print("Record inserted")
            # the connection is not autocommitted by default, so we must commit to save our changes
            cursor.execute("SELECT * FROM movies")
            myresult = cursor.fetchall()
            for x in myresult:
                print(x)
            conn.commit()
        
            
except Error as e:
    print("Error while connecting to MySQL", e)
