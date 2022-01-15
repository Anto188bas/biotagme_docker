#!/bin/sh

wget -O network.zip https://www.dropbox.com/sh/nm1jho6m625b4mf/AAAo9cyT390uTZTn6unC5PPha
unzip network.zip

# NETWORK ELABORATION
sed -i '1s/.*/id:ID\tname\tlabel:LABEL/' Nodes.csv
sed -i '1s/.*/start_id:START_ID\tend_id:END_ID\tbtg_score:Double\tstr_score:Double\tliter_evid:Int/' Edges.csv

# NEO4J csv
mv Edges.csv ./Neo4jVolume/import
mv Nodes.csv ./Neo4jVolume/import

# MYSQL csv
mv *.csv ./MySql/data
