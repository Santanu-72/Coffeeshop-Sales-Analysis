--Revenue by Product Category
--Which categories contribute most to overall revenue?
SELECT * FROM coffeeshop_sales cs;
SELECT 
	product_category,
	sum(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY product_category
ORDER BY revenue desc;

--Revenue share % by each catagory
--What percentage of total revenue comes from each product category?

WITH category_revenue AS 
(
	SELECT 
		product_category,
		sum(transaction_qty * unit_price) AS revenue
	FROM coffeeshop_sales
	GROUP BY product_category
)
SELECT 
	product_category,
	revenue,
	round(
		(revenue * 100) / sum(revenue) over()	
	, 2) AS revenue_share
FROM category_revenue
ORDER BY revenue_share desc;

--Top 10 Products by Revenue
--Which individual products generate the most revenue?
SELECT 
	product_detail,
	sum(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY product_detail
ORDER BY revenue DESC
LIMIT 10;

--Top 10 Products by Quantity Sold
--Which products are purchased most frequently?
SELECT 
	product_detail,
	sum(transaction_qty) AS total_sold
FROM coffeeshop_sales
GROUP BY product_detail
ORDER BY total_sold DESC
LIMIT 10;

--Bottom 10 Products by Revenue
--Which products contribute the least revenue and may require promotion, repricing, or discontinuation?
SELECT 
	product_detail,
	sum(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY product_detail
ORDER BY revenue asc
LIMIT 10;