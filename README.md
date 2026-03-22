# 📊 Análise de Dados de Clientes - SQL Northwind

Este projeto demonstra minhas habilidades em extração e análise de dados utilizando **SQL Server**. Explorei relacionamentos entre tabelas, agregações e filtros avançados.

## 🧠 Conceitos Aplicados

* Select: Para selecionar as colunas
* Joins (Inner e Left): Para conectar dados de clientes com seus pedidos.
* Agregação (COUNT): Para quantificar o volume de vendas por cliente.
* Agrupamentos (GROUP BY): Para consolidar os dados.
* Filtros de Agragação (HAVING): Para identificar perfis específicos (Clientes VIP, com mais 10 pedidos)

## 🚀 Desafio Resolvido

### 1. Identificação de Clientes com mais de 10 Pedidos (VIP)
Nesta consulta , busquei todos os clientes que possuem mais de 10 pedidos realizados, ordenando do maior para o menor

```Sql
SELECT C.ContactName, COUNT(P.OrderID) AS TotalPedidos
FROM Customers C
LEFT JOIN Orders P ON C.CustomerID = P.CustomerID
GROUP BY C.ContactName
HAVING COUNT(P.OrderID) > 10 
ORDER BY TotalPedidos DESC
````
Resultado Visual:

<img width="1464" height="701" alt="image" src="https://github.com/user-attachments/assets/f10d75d3-66be-4b2b-ba84-d48544dc06c8" />

---

## 🏁 Conclusão e Próximos Passos
Este projeto foi fundamental para entender como transformar dados em informações de negócio. 

**O que aprendi:**
* `INNER JOIN` para gerar lista dos "Top Compradores", apenas clientes com pedidos confirmados.
* A importância do `LEFT JOIN` para não perder dados de clientes inativos.
* Como usar `HAVING` para filtrar resultados que já foram agrupados (algo que o `WHERE` não faz).
* Organização de scripts para relatórios executivos.

*Próximo desafio: Explorar subqueries e Views para otimizar ainda mais essas consultas.*

---
## 🛠️ Ferramentas Utilizadas

* **Banco de Dados:** SQL Server (Base Northwind)
* **IDE:** SQL Server Management Studio (SSMS)
* **Linguagem:** T-SQL







