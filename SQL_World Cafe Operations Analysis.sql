--What categories do we have?
SELECT category
FROM menu_items
GROUP BY category;
--RES: Mexican, Italian, American and Asian

--OBJ: Select the number of items on the menu.
SELECT COUNT(*) FROM menu_items;
--RES: 32 items

--What are the least expensive?
SELECT *
FROM menu_items
ORDER BY price;
--RES: Edamame (least expensive) = $5.00

--What are the most expensive?
SELECT *
FROM menu_items
ORDER BY price DESC;
--RES: Shrimp (most expensive) = $19.95

--Which Italian dishes are on the menu?
SELECT *
FROM menu_items
WHERE category = "Italian";
--RES: Spaghetti, Spaghetti & Meatballs, Fettuccine Alfredo, Meat Lasagna, Cheese Lasagna, Mushroom Ravioli, Shrimp Scampi, Chicken Parmesan, Eggplant Parmesan...

--How many Italian dishes are on the menu?
SELECT COUNT (*)
FROM menu_items
WHERE category = "Italian";
--RES: 9 Italian items

--What are the least expensive Italian dishes?
SELECT *
FROM menu_items
WHERE category = "Italian"
ORDER BY price;
--RES: Least expensive Spaghetti = $14.50

--What are the most expensive Italian dishes?
SELECT *
FROM menu_items
WHERE category = "Italian"
ORDER BY price DESC;
--RES: Most expensive Shrimp Scampi = $19.95

--How many dishes are in each category?
SELECT category, COUNT (menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;
--RES: Mexican (9), Italian (9), American (9) and Asian (8)

--What is the average dish price within each category?
SELECT category, AVG (price) AS avg_dishes
FROM menu_items
GROUP BY category
ORDER BY avg_dishes
--RES: American (10.06), Mexican (11.8), Asian (13.475) and Italian (16.5)



--Undestand the table.
SELECT *
--FROM order_details;

--What is the date range of the table?
SELECT MIN(order_date), MAX(order_date)
FROM order_details;
--RES:2023-01-01 to 2023-03-31

--How many orders were made within this date range?
SELECT COUNT(order_id)
FROM order_details;
--RES:12234 is te TOTAL (But an order has more than one item, so it cannot count duplicates) --> Wrong

--How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id)
FROM order_details;
--RES:5370

--How many items were ordered within this date range?
SELECT COUNT(order_id)
FROM order_details;
--RES:12234 

--Which orders had the most number of items?
SELECT (order_id), COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;
--RES: Max/Most number of items per order is 14

--SUBQUERY!!!
--How many orders had more than 12 items?
SELECT COUNT (*)
FROM (SELECT (order_id), COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) as num_orders;
--RES: 20 orders had more than 12 items.


SELECT *
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;
--RES: TABLES ARE TOGETHER NOW

--What were the most ordered items?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY item_name
ORDER BY num_purchases DESC;
--RES: Most Hamburguer (622). Also, American and Asian are the most ordered.

--What were the least ordered items?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY item_name
ORDER BY num_purchases;
--RES: Least Chicken Tacos (123). Also, Mexican food looks the least ordered.

--What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;
--RES: Top 5 highest spend order ~ 192, 191, 190, 189 and 185. Also, the highest top 1 is order_id 440.

--What are the insights of the highest spend order?
SELECT *
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id = 440
--RES: So I can see all details of the highest top 1 order (order_id 440).

--Understanding more deeply order 440 to get insights: Category.
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY Category;
--RES: So they ordered more Italian food (8 items).

--Understanding more deeply order 440 to get insights: Category.
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category
ORDER BY order_id, num_items;
--RES: They ordered more Italian food, so the insight here is keep Italian dishes.
