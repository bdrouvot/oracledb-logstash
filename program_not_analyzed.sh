curl -XDELETE influxgraf:9200/oracle*

curl -XPUT influxgraf:9200/_template/oracle_template -d ' {
 "template" : "oracle*",
 "settings" : {
   "number_of_shards" : 1
   },
 "mappings" : {
  "oracle" : {
   "properties" : {
    "program" : {"type" : "string", "index": "not_analyzed" },
    "ORA-" : {"type" : "string", "index": "not_analyzed" }
    }
   }
  }
}'
