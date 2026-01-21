USE SmartLibraryDB;
GO

CREATE TABLE log.ImportErrors (
    ErrorID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(500),
    NovelLink NVARCHAR(1000),
    ErrorCode INT,
    ErrorColumn INT,
    ErrorDescription NVARCHAR(MAX),
    ErrorDate DATETIME DEFAULT GETDATE()
);
GO