#!/bin/bash

psql_config_file=$PWD/postgres.txt
script_dir=$PWD/tables/drop
order_file=$PWD/tables/drop_order.txt

# check if the order file exists
if [ ! -f "$order_file" ]; then
 echo "Unable to find order file. exiting..."
 exit 1
fi

# check if the script directory exists
if [ ! -d "$script_dir" ]; then
  echo "Unable to find script directory. exiting..."
  exit 1
fi

# check if the postgres config file exists
if [ ! -f "$psql_config_file" ]; then
  echo "Unable to find postgres config file. exiting..."
  exit 1
fi

# parse the postgres config file to build connection strings
set_psql_config_vars() {
    while IFS='=' read -r key value; do
      case "$key" in
        host) pg_host=$value ;;
        port) pg_port=$value ;;
        dbname) pg_dbname=$value ;;
        user) pg_user=$value ;;
        password) pg_pass=$value ;;
        *) ;;
      esac
    done <$psql_config_file
}

# pass each file in the order file to psql
run_files_in_order() {
  while read -r line; do
    echo "$line"
    psql postgresql://$pg_user:$pg_pass@$pg_host:$pg_port/$pg_dbname -f $script_dir/$line.sql
  done <$order_file
}

echo "Setting up connection configuration..."
set_psql_config_vars
echo "Running SQL scripts..."
run_files_in_order
echo "Finished."