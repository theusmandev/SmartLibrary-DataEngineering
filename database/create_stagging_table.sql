CREATE TABLE stg.Novels_Excel (
    Title NVARCHAR(500),
    NovelLink NVARCHAR(1000)
);
GO


select * from stg.Novels_Excel


USE SmartLibraryDB;
GO

-- Columns ko NVARCHAR (Unicode) mein tabdeel karein
ALTER TABLE stg.Novels_Excel ALTER COLUMN Title NVARCHAR(500);
ALTER TABLE stg.Novels_Excel ALTER COLUMN NovelLink NVARCHAR(1000);
GO



SELECT TOP 10 * FROM stg.Novels_Excel;

select count(*) from stg.Novels_Excel