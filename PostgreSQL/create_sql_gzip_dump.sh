#!/bin/bash

if [ $# -eq 0]
then
  echo "No arguments passed. USAGE: ./create_sql_gzip_dump.sh <USER> <HOST> <OUTPUT_FILE>"
  exit 2
else
  $USER=$1
  $HOST=$2
  $DATABASE=$3
  $OUTPUT_FILE=$4

  pg_dump -U $USER -h $HOST $DATABASE | gzip > $OUTPUT_FILE
fi
