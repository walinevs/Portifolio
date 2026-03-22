SELECT*
FROM Customers

SELECT*
FROM Orders


SELECT C.ContactName, COUNT(P.OrderID) AS TotalPedidos
FROM Customers C
INNER JOIN Orders P ON C.CustomerID = P.CustomerID
GROUP BY C.ContactName
HAVING COUNT(P.OrderID) > 10 
ORDER BY TotalPedidos DESC;

--Filtrando com LEFT JOIN os Clientes que não obteve pedidos

SELECT C.ContactName, COUNT(P.OrderID) AS TotalPedidos
FROM Customers C
LEFT JOIN Orders P ON C.CustomerID = P.CustomerID
GROUP BY C.ContactName
ORDER BY TotalPedidos ASC

