SELECT 
    o.OrderID AS [НомерЗаказа],
    c.CompanyName AS [Покупатель],
    p.Name AS [Продукция],
    o.Quantity AS [КоличествоВЗаказе],
    ROUND(o.Quantity * SUM(s.NormConsumption * m.Cost), 2) AS [ПолнаяСтоимостьПоМатериалам]
FROM dbo.Orders o
INNER JOIN dbo.Customers c ON o.ID_customer = c.ID_customer
INNER JOIN dbo.Products p ON o.ID_product = p.ID_product
INNER JOIN dbo.Specifications s ON o.ID_product = s.ID_product
INNER JOIN dbo.Materials m ON s.ID_material = m.ID_material
GROUP BY 
    o.OrderID, 
    c.CompanyName, 
    p.Name, 
    o.Quantity
ORDER BY o.OrderID;