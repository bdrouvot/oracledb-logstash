curl -XDELETE influxgraf:9200/audit_files_oracle*

curl -XPUT influxgraf:9200/_template/audit_files_oracle_template -d ' {
 "template" : "audit_files_oracle*",
 "settings" : {
   "number_of_shards" : 1
   },
 "mappings" : {
  "audit_files_oracle" : {
   "properties" : {
    "database_user" : {"type" : "string", "index": "not_analyzed" },
    "client_user" : {"type" : "string", "index": "not_analyzed" },
    "client_terminal" : {"type" : "string", "index": "not_analyzed" }
    }
   }
  }
}'
