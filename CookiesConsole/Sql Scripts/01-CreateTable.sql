USE CookiesDb;
GO
-- ===========================
-- 移除 Table
-- ===========================
DROP TABLE IF EXISTS [dbo].[Products];
GO
DROP TABLE IF EXISTS [dbo].[Categories]
GO
-- ===========================
-- 建立 Table
-- ===========================
CREATE TABLE [dbo].[Categories]
( [CategoryId]       INT           NOT NULL
, [CategoryName]     NVARCHAR(30)  NOT NULL
  CONSTRAINT PK_Catgories PRIMARY KEY ( [CategoryId] )
);
GO
CREATE TABLE [dbo].[Products]
( [ProductId]        INT           NOT NULL
, [ProductName]      NVARCHAR(30)  NOT NULL
, [CategoryId]       INT           NOT NULL
, [Price]            INT           NOT NULL
  CONSTRAINT PK_Products PRIMARY KEY ( [ProductId] )
, CONSTRAINT FK_Categories FOREIGN KEY ( [CategoryId] )
                           REFERENCES [dbo].[Categories] ( [CategoryId] )
);
GO
