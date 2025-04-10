# Nebula Core

Get the requirements by running

```sh
pip install -r requirements.txt
```

(this installs `dearpygui`, `psycopg2` and `re` if you don't already have them).

Run the application with 

```sh
python ./gui.py
```

## Getting the data

Create and populate the data using `PostgreSQL` by running

```sh
psql -d "Nebula Core" -u <user> -f Creation_NC.sql
```

and

```sh
psql -d "Nebula Core" -u <user> -f Insertion_NC.sql
```

Where you should replace `<user>` with the username you'd like, assuming you've already created a database with the name `Nebula Core`.
