
SELECT
 ISNULL(A.COLUMN_NAME, B.COLUMN_NAME)
 AS [Tabela]
,CASE WHEN A.COLUMN_NAME IS NULL
 THEN 'SOMENTE EM ' + B.TABLE_NAME
 WHEN B.COLUMN_NAME IS NULL
 THEN 'SOMENTE EM ' + A.TABLE_NAME
 ELSE 'OK' END
 AS [Resultado]
FROM
(
 SELECT COLUMN_NAME, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'AG1990'
) A
FULL OUTER JOIN
(
 SELECT COLUMN_NAME, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'AG2990'
) B
ON A.COLUMN_NAME = B.COLUMN_NAME
GO