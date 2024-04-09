
SELECT product_type_id, SUM(quantity) AS total
FROM OrderItem
WHERE status_of_payment = 'paid'
GROUP BY product_type_id
ORDER BY total DESC
LIMIT 3;


--Could you list the descriptions of product types that are categorised at the second tier? Note:
--Product types without a parent are deemed first-tier, and their immediate offspring types are
--considered the second tier.
SELECT DISTINCT T.id, P.description
FROM ProductType AS T
JOIN Product AS P ON T.id = P.type
WHERE T.parent IS NULL;



--Can you randomly pick three customers and share their email addresses?
SELECT customer_id, email
FROM Customer
ORDER BY RAND()
LIMIT 3;


--create a query that finds the customers who have placed the most 
-- orders along with the total amount they have spent.
SELECT C.customer_id, C.name, COUNT(O.order_id) AS total_orders, SUM(OI.quantity * OI.unit_price) AS total_spent
FROM Customer AS C
JOIN Orders AS O ON C.customer_id = O.user_id
JOIN OrderItem AS OI ON O.order_id = OI.order_id
WHERE OI.status_of_payment = 'Paid'
GROUP BY C.customer_id
ORDER BY total_orders DESC, total_spent DESC
LIMIT 3;

--retrieves the product types and the corresponding products that have the highest average price:
SELECT PT.id AS product_type_id, AVG(P.price) AS average_price
FROM ProductType AS PT
JOIN Product AS P ON PT.id = P.type
GROUP BY PT.id
ORDER BY average_price DESC
LIMIT 3;


--the top 3 most popular product colors based on the total quantity ordered:
SELECT P.color, SUM(OI.quantity) AS total_quantity_ordered
FROM Product AS P
JOIN OrderItem AS OI ON P.id = OI.product_id
GROUP BY P.color
ORDER BY total_quantity_ordered DESC
LIMIT 3;