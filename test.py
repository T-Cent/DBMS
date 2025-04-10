import psycopg2 # type: ignore

conn = psycopg2.connect("dbname='Nebula Core' user=postgres password=!@#456")

with conn.cursor() as cur:
    cur.execute("SELECT country, count(*) Count, STRING_AGG(name, ', ') 'Launch Sites' FROM launch_sites GROUP BY country;")
    for record in cur:
        print(record)
    
