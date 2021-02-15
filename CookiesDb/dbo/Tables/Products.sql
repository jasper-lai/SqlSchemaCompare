CREATE TABLE [dbo].[Products] (
    [ProductId]   INT           NOT NULL,
    [ProductName] NVARCHAR (30) NOT NULL,
    [CategoryId]  INT           NOT NULL,
    [Price]       DECIMAL(6, 2)           NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId])
);

