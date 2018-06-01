#!/usr/bin/bash
BINARY=hive
INIT_FILE=hos.settings
DATABASE=database.settings
QUERY_LIST=`cat list`


RESULT_DIR=results/`date +%Y-%m-%d-%H-%M-%S`

mkdir -p $RESULT_DIR
for i in $QUERY_LIST
do
	echo "Query Number: $i"
	$BINARY -i $INIT_FILE -i $DATABASE -f query${i}.sql 1|grep -Ev "hadoop|WARN">$RESULT_DIR/query${i}.result
done
