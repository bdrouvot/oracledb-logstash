curl -XDELETE influxgraf:9200/audit_databases_oracle*

curl -XPUT influxgraf:9200/_template/audit_databases_oracle_template -d ' {
 "template" : "audit_databases_oracle*",
 "settings" : {
   "number_of_shards" : 1
   },
 "mappings" : {
  "audit_databases_oracle" : {
   "properties" : {
    "authenticated_by" : {"type" : "string", "index": "not_analyzed" },
    "os_username" : {"type" : "string", "index": "not_analyzed" },
    "priv_used" : {"type" : "string", "index": "not_analyzed" },
    "external_name" : {"type" : "string", "index": "not_analyzed" }
    }
   }
  }
}'
