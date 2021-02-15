CREATE TABLE [dbo].[Products] (
    [ProductId]   INT           NOT NULL,
    [ProductName] NVARCHAR (30) NOT NULL,
    [CategoryId]  INT           NOT NULL,
    [Price]       INT           NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId])
);

