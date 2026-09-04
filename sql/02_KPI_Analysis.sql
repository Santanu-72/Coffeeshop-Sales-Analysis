SELECT * FROM coffeeshop_sales;
--Total Revenue
SELECT sum(TRANSACTION_qty * unit_price) AS total_revenue
FROM coffeeshop_sales;

--Total Transaction
SELECT count(TRANSACTION_id) AS total_transactions FROM coffeeshop_sales ;

--Average Order Value
SELECT
	round(
		sum(transaction_qty * unit_price) / count(DISTINCT transaction_id), 
			2) AS average_order_value
FROM coffeeshop_sales;

--Total Quantity Sold
SELECT sum(transaction_qty) AS total_quantity_sold
FROM coffeeshop_sales;

--Average Items per Transaction
SELECT sum(transaction_qty) / count(DISTINCT transaction_id) AS average_items_per_transaction
FROM coffeeshop_sales;
	