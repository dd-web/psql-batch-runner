# SQL Statement Executor

executes groups of sql statement files for quickly prototyping

## Order files

order files are a list of the sql files in the order they should be ran. helps to retain data integrity and avoid cascade statements. 

## psql

postgres.txt should contain a list of connection configuration options for script to use. here is an example of required parameters (unless modifying the script)

```bash
host=localhost
port=5432
dbname=database
user=postgres
password=password

```

*note* the empty newline at the end of the file, needed for the last line to be processed.

## SQL files

SQL files should be placed within the tables/<operation> folder to be ran in which the order file specifies. you can run multiple statements within a single file by simply adding more statements after your first by ending it with a semicolin `;`. SQL files are passed as-is to psql without any modifications.

## notes

modify/update scripts/sql to meet your needs. this repo is for my personal use but thought others might want to do something similar so why not make it public. Enjoy.