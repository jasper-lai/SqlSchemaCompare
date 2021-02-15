CREATE TABLE [dbo].[Categories] (
    [CategoryId]   INT           NOT NULL,
    [CategoryName] NVARCHAR (30) NOT NULL,
    CONSTRAINT [PK_Catgories] PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

