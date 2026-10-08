#!/bin/sh
# A single quote in the user name reaches the SQL query: the login answers with MySQL's syntax error.
set -e
curl -sS -H 'Content-Type: application/json' -d "{\"user\":\"'\",\"pass\":\"x\"}" http://api:10001/login | grep -q 'SQL syntax'
