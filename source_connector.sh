curl -H 'Content-Type: application/json' 192.168.18.236:8083/connectors --data '
{
 "name": "bsp-mssqlv27",
 "config": {
     "connector.class" : "io.debezium.connector.sqlserver.SqlServerConnector",
     "tasks.max" : "1",
     "database.hostname" : "192.168.18.236",
     "database.port" : "1433",
     "database.user" : "sa",
     "database.password" : "Ddi12345!",
     "database.names" : "BSP",
	 "database.encrypt" : "false",
	 "topic.prefix" : "bsp_fix",
     "database.history.kafka.bootstrap.servers" : "192.168.18.236:9092",
     "database.history.kafka.topic": "schema.bsp",
	 "schema.history.internal.kafka.topic":"fix.bsp",
	 "schema.history.internal.kafka.bootstrap.servers":"192.168.18.236:9092"
     }
 }'
