curl -H 'Content-Type: application/json' 192.168.18.236:8083/connectors --data '
{
  "name": "neo4j_cetak_kartu_test_fix4002",
  "config": {
        "topics": "bsp_fix.BSP.dbo.T33_UDT_TESTING",
        "connector.class": "streams.kafka.connect.sink.Neo4jSinkConnector",
        "key.converter": "org.apache.kafka.connect.storage.StringConverter",
        "value.converter": "org.apache.kafka.connect.json.JsonConverter",
        "errors.retry.timeout": "-1",
        "errors.retry.delay.max.ms": "1000",
        "errors.tolerance": "all",
        "errors.log.enable": true,
        "errors.log.include.messages": true,
        "neo4j.server.uri": "bolt://192.168.18.235:7687",
        "neo4j.authentication.basic.username": "neo4j",
        "neo4j.authentication.basic.password": "bsp12345",
        "neo4j.database": "neo4j",
        "neo4j.encryption.enabled": "false",
        "value.converter.schemas.enable":"false",
        "neo4j.topic.cypher.bsp_fix.BSP.dbo.T33_UDT_TESTING":"with event CALL {with event with event WHERE event.payload.op IN [\"r\"] MERGE (n:CETAK_KARTU_TEST_V5 {noid:event.payload.after.noid}) SET n.BSP_NOKPAK=event.payload.after.BSP_NOKPAK,n.SPA_TGAKAD=event.payload.after.SPA_TGAKAD,n.UDT_FLGBATAL=event.payload.after.UDT_FLGBATAL  UNION with event with event WHERE event.payload.op IN [\"d\"]  MATCH (n:CETAK_KARTU_TEST_V5 {noid:event.payload.before.noid}) with n detach delete n}"
  }
}'
