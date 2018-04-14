#!/usr/bin/env bash

MYSQL_USER=root
DATABASE_NAME=notes

mysql -u ${MYSQL_USER} -e "DROP DATABASE IF EXISTS ${DATABASE_NAME};"
mysql -u ${MYSQL_USER} -e "CREATE DATABASE ${DATABASE_NAME};"
mysql -u ${MYSQL_USER} ${DATABASE_NAME} < notes.sql
