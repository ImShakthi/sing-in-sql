# Sing-in-SQL

Let's sing and enjoy SQL queries

## Dockerise oracle container in local

Pull latest oracle 12 database
```shell
docker pull truevoly/oracle-12c
```

### Create the container
The container will allow you to store the database locally.

The first step is to create a folder for the image.
```shell
mkdir ~/oracle_data
```

Now we create a container and mount it in the latest folder using the oracle-12c image. The command will also run the instance.
```shell
docker run -d -p 8080:8080 -p 1521:1521 -v ~/oracle_data/:/u01/app/oracle truevoly/oracle-12c
```

### Connect to local oracle database
You can connect to sqlplus with this command :
```shell
sqlplus system/oracle@//localhost:1521/xe
```

### Test database
For example, you can run this script to create a new database named TEST_DB.
```sql
CREATE USER TEST_DB IDENTIFIED BY passtest DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 250M on USERS;
GRANT CONNECT, RESOURCE, DBA TO TEST_DB;
GRANT CREATE SESSION TO TEST_DB;
GRANT CREATE TABLE TO TEST_DB;
GRANT CREATE VIEW TO TEST_DB;
GRANT CREATE ANY TRIGGER TO TEST_DB;
GRANT CREATE ANY PROCEDURE TO TEST_DB;
GRANT CREATE SEQUENCE TO TEST_DB;
GRANT CREATE SYNONYM TO TEST_DB;
```