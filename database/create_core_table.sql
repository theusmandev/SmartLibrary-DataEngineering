-- ====================================================
-- Core Table: Main Novels Table
-- Author: Your Name
-- Created: 2026-01-21
-- Purpose: Store clean, production-ready novel data
-- ====================================================

CREATE TABLE core.Novels (
    NovelID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(500) NOT NULL,
    NovelLink NVARCHAR(1000) NOT NULL,
    UploadedDate DATETIME DEFAULT GETDATE()
);
GO

select * from core.Novels