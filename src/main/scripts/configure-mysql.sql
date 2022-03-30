## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE ejf_dev;
CREATE DATABASE ejf_prod;

#Create database service accounts
CREATE USER 'ejf_dev_user'@'localhost' IDENTIFIED BY 'guru';
CREATE USER 'ejf_prod_user'@'localhost' IDENTIFIED BY 'guru';
CREATE USER 'ejf_dev_user'@'%' IDENTIFIED BY 'guru';
CREATE USER 'ejf_prod_user'@'%' IDENTIFIED BY 'guru';

#Database grants
GRANT SELECT ON ejf_dev.* to 'ejf_dev_user'@'localhost';
GRANT INSERT ON ejf_dev.* to 'ejf_dev_user'@'localhost';
GRANT DELETE ON ejf_dev.* to 'ejf_dev_user'@'localhost';
GRANT UPDATE ON ejf_dev.* to 'ejf_dev_user'@'localhost';
GRANT SELECT ON ejf_prod.* to 'ejf_prod_user'@'localhost';
GRANT INSERT ON ejf_prod.* to 'ejf_prod_user'@'localhost';
GRANT DELETE ON ejf_prod.* to 'ejf_prod_user'@'localhost';
GRANT UPDATE ON ejf_prod.* to 'ejf_prod_user'@'localhost';
GRANT SELECT ON ejf_dev.* to 'ejf_dev_user'@'%';
GRANT INSERT ON ejf_dev.* to 'ejf_dev_user'@'%';
GRANT DELETE ON ejf_dev.* to 'ejf_dev_user'@'%';
GRANT UPDATE ON ejf_dev.* to 'ejf_dev_user'@'%';
GRANT SELECT ON ejf_prod.* to 'ejf_prod_user'@'%';
GRANT INSERT ON ejf_prod.* to 'ejf_prod_user'@'%';
GRANT DELETE ON ejf_prod.* to 'ejf_prod_user'@'%';
GRANT UPDATE ON ejf_prod.* to 'ejf_prod_user'@'%';