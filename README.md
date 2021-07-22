# MySQL Playground for Girlcode Learnership

A simple [Mysql](https://www.mysql.com/) in version 8 to play with data and [PhpMyAdmin](https://www.phpmyadmin.net/) to explore them !


## Installation

You need [Docker]() and [Docker-compose]() to run MySQL and PhpMyAdmin.

If you don't want to use docker, please follow the [MySQL Installation guide](https://dev.mysql.com/doc/refman/8.0/en/installing.html).
You will be able to execute the SQL scripts in `scripts/`

## Usage

Start:
````
docker-compose up
```

MySQL is then available on `localhost:3306` and PhpMyAdmin on http://localhost:8081

Default env variables are set in the `docker-compose.yml`, feel free to change them.

|Variables|Value|
|---|---|
|MYSQL_USER|girlcode|
|MYSQL_PASSWORD|mypassword|
|MYSQL_ROOT_PASSWORD|my_root_password|

Stop: `docker-compose down`

Stop with data deletion: `docker-compose volume down -v`

### PhpMyAdmin

To connect your local database, use the Server: `db` with user and password above.

## MySQL Scripts

`docker exec -i <container_name> mysql -u root -ppassword <mydb> < /path/to/script.sql`

### Others datasets

- https://southafrica.opendataforafrica.org/
- https://www.reddit.com/r/bigquery/wiki/datasets
- https://data.europa.eu/en
- https://github.com/awesomedata/awesome-public-datasets