From ubuntu:16.04  
# Install MySQL.
RUN  apt update && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server && \
    && mkdir /var/run/mysqld /mysql-init \
    && chown -R mysql:mysql  /var/run/mysqld

VOLUME mysql-init

# Define working directory.
WORKDIR mysql-init

COPY mybdd.sql  .
RUN sed -i 's/bind-address/#bind-address/' /etc/mysql/mysql.conf.d/mysqld.cnf
RUN service mysql start && mysql -uroot < mybdd.sql

# Expose ports.
EXPOSE 3306


ENTRYPOINT ["mysqld_safe"]

