import psycopg2

with psycopg2.connect("dbname='Nebula Core' user=postgres password=!@#456") as conn:
    with conn.cursor() as cur:
        cur.execute("""
        select * from asteroids
        """)

        for record in cur:
            print(record)

    conn.commit()
