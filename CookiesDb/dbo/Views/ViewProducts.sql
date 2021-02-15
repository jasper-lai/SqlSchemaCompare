CREATE VIEW [dbo].[ViewProducts]
AS 
    SELECT  P.ProductId,
            P.ProductName,
            P.Price,
            P.CategoryId,
            C.CategoryName
    FROM    [Products] AS P LEFT JOIN [Categories] AS C 
                       ON ( P.CategoryId = C.CategoryId )
