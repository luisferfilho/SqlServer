SELECT o.name
FROM sys.sql_modules m
    INNER JOIN sys.objects o ON m.[object_id] = o.[object_id]
WHERE o.type_desc = 'SQL_STORED_PROCEDURE'
 AND m.[definition] LIKE '%fnwebTEMGetCntStoDati%'