--Getting Started with the project

--Creating the Database
CREATE DATABASE coffeeshop_sales_DB;

--Creating the table
CREATE TABLE coffeeshop_sales (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    transaction_time TIME,
    transaction_qty INT,
    store_id INT,
    store_location VARCHAR(100),
    product_id INT,
    unit_price DECIMAL(10,2),
    product_category VARCHAR(100),
    product_type VARCHAR(100),
    product_detail VARCHAR(150),
    hour INT,
    timeslot VARCHAR(20)
);

-- csv file data imported using import option

