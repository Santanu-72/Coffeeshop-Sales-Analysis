SELECT * FROM coffeeshop_sales;

--Revenue by Month
--Calculate total revenue for each month separately.
SELECT 
    TO_CHAR(DATE_TRUNC('month', transaction_date), 'Mon YYYY') AS month,
    SUM(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY DATE_TRUNC('month', transaction_date);


--Monthly Growth %
--How much did revenue grow or decline compared to the previous month?
WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,
        SUM(transaction_qty * unit_price) AS revenue
    FROM coffeeshop_sales
    GROUP BY DATE_TRUNC('month', transaction_date)
)
SELECT
    TO_CHAR(month, 'Mon YYYY') AS month,
    revenue,
    LAG(revenue, 1) OVER (ORDER BY month) AS previous_revenue,
    round(
    	(revenue-LAG(revenue, 1) OVER (ORDER BY month))
    	/lag(revenue, 1) OVER (ORDER BY month) * 100
    ,2) AS growth
FROM monthly_revenue;

--Revenue by Day of Week
--Which day of the week generates the highest revenue?
SELECT
	TRIM(TO_CHAR(transaction_date, 'Day')) AS day_of_week,
    SUM(transaction_qty * unit_price) AS revenue
FROM coffeeshop_sales
GROUP BY  EXTRACT(ISODOW FROM transaction_date),
    TRIM(TO_CHAR(transaction_date, 'Day'))
ORDER BY
    EXTRACT(ISODOW FROM transaction_date);

--insights:
	--Revenue remained relatively consistent across the week, 
	--with Monday generating the highest revenue (101,677.28) and Saturday the lowest (96,894.48). 
	--The narrow revenue gap suggests stable customer demand rather than strong weekend dependency.

--Revenue by Hour
--At what hour of the day does the coffee shop generate the most revenue?
SELECT 
	HOUR,
	sum(transaction_qty * unit_price ) AS revenue
FROM coffeeshop_sales
GROUP BY HOUR 
ORDER BY HOUR;

--insights
--The highest revenue was generated at 10 AM (88,673.39), 
--confirming a strong morning demand pattern. 
--Revenue declined steadily after 11 AM and dropped sharply after 6 PM, 
--indicating that the coffee shop's business is primarily driven by breakfast and early-day customers.

--business recommendation
--Increase staffing and inventory availability between 8 AM and 10 AM to accommodate peak demand and reduce customer wait times.
--Consider targeted promotions during evening hours to improve customer traffic after 6 PM.

--Average Revenue by Hour
--On a typical day, how much revenue does the shop generate during each hour?
SELECT 
	HOUR,
	round(
		sum(transaction_qty * unit_price )
		/count(DISTINCT transaction_date)
	,2) AS average_revenue
FROM coffeeshop_sales
GROUP BY HOUR 
ORDER BY HOUR;

--Revenue by Timeslot
--Which timeslot contributes the most revenue?
SELECT 
	timeslot,
	sum(transaction_qty * unit_price ) AS revenue
FROM coffeeshop_sales
GROUP BY timeslot 
ORDER BY revenue desc;

--insight
--Morning sales accounted for the largest share of revenue (388,288.67), 
--significantly outperforming Afternoon (204,720.83) and Evening (105,802.83). 
--This indicates that the business is primarily driven by breakfast and early-day consumption patterns, 
--making morning operations critical to overall performance.
