#!/bin/sh
mysqldump --skip-add-drop-table --single-transaction -u officelife -psecret officelife | sed -r 's/CREATE TABLE (`[^`]+`)/TRUNCATE TABLE \1; CREATE TABLE IF NOT EXISTS \1/g' > officelife.sql
