# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:8.0.24

COPY config/user.cnf /etc/mysql/my.cnf

# Copy SQL initialization file to the MySQL init directory
COPY ./init_db.sql /docker-entrypoint-initdb.d/
