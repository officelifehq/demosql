#!/bin/sh
mysqldump --skip-add-drop-table --skip-dump-date --single-transaction -u officelife -psecret officelife | \
sed -r 's/CREATE TABLE (`[^`]+`)/CREATE TABLE IF NOT EXISTS \1/g; s/LOCK TABLES (`[^`]+`)/TRUNCATE TABLE \1; LOCK TABLES \1/g' > officelife.sql
