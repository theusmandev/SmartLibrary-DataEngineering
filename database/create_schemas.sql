CREATE SCHEMA core;
GO

CREATE SCHEMA stg;
GO


SELECT name, schema_id
FROM sys.schemas
WHERE name IN ('core', 'stg');


CREATE SCHEMA log;
GO