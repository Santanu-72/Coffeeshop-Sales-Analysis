--Revenue by Store Location
SELECT
	store_location,
	sum(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY store_location 
ORDER BY revenue desc;

--insight:
--Hell's Kitchen generated the highest revenue (236,511.17), 
--followed closely by Astoria and Lower Manhattan. 
--Revenue variation across locations was minimal, 
--suggesting a balanced and stable performance across all store branches.

--Which store processes the most transactions?
SELECT 
	store_location,
	sum(transaction_qty * unit_price) AS revenue,
	count(DISTINCT transaction_id) AS total_ransaction
FROM coffeeshop_sales
GROUP BY store_location 
ORDER BY total_ransaction DESC;

--insight:
--performance is fairly consistent across all locations.

--Average Order Value by Store
SELECT
	store_location,
	round(
		sum(transaction_qty * unit_price)
		/count(DISTINCT transaction_id),
		2) average_order_value
FROM coffeeshop_sales
GROUP BY store_location 
ORDER BY average_order_value DESC;

--insight:
--Analysis of store-level performance revealed minimal variation in revenue, 
--transaction volume, and average order value across all locations. 
--This suggests standardized operations and a consistent customer purchasing pattern across branches.