import psycopg2
from psycopg2.extras import RealDictCursor

conn = psycopg2.connect(host='127.0.0.1',
                                database='db1',
                                user='root',
                                password='root',
                                port='5432'
                                )

cur = conn.cursor(cursor_factory=RealDictCursor)

cur.execute('SELECT * FROM "table1"')

for c in cur:
    print(c)



