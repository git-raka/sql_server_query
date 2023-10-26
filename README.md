### ENABLE READ REPLICA
```
USE MYdb
GO

EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name   = N'T33_UDT_TESTING',
@role_name     = NULL,
@filegroup_name = N'PRIMARY',
@supports_net_changes = 0
GO
```

### CHECK REPLICA TABLE
```
EXEC sys.sp_cdc_help_change_data_capture 
GO
```

### INSERT
```
INSERT INTO DBNAME ([KOLOM1], [KOLOM2], [KOLOM3])
VALUES (018.01.009.001.01.2023.00007, NULL, 2023-01-31 00:00:00.000);
```

### UPDATE
```
UPDATE employees
SET salary = 50000, department = 'Sales'
WHERE employee_id = 123;
```

### ENABLE SQL SERVER AGENT
```
sudo /opt/mssql/bin/mssql-conf set sqlagent.enabled true 
sudo systemctl restart mssql-server
```
### CHECK SERVER AGENT STATUS
```
SELECT dss.[status], dss.[status_desc]
FROM   sys.dm_server_services dss
WHERE  dss.[servicename] LIKE N'SQL Server Agent (%';
```
