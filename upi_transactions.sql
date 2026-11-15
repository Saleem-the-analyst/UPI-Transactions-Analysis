use upi;

-- Data Exporation

select *
from upi_transactions;

-- describe the table
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'upi_transactions';

-- total records
select count(*)
from upi_transactions;

-- unique transaction 
select distinct Transaction_ID
from upi_transactions;

-- start and end date 
select 
		min(Transaction_Date) AS start_date,
		max(Transaction_Date) AS end_date
from upi_transactions;

-- UPI_App
select distinct UPI_App
from upi_transactions;

select distinct Customer_ID
from upi_transactions;

-- finding Min & Max transactions under customer_id
with count as(	
select	Customer_ID, 
		ROW_NUMBER() over(partition by customer_ID order by customer_id) as rn_count
from upi_transactions
)
select	 
		min(rn_count) as min_num,
		max(rn_count) as max_num
from count;

select distinct Customer_ID, count(*) AS total_customers
from upi_transactions
group by Customer_ID
order by total_customers desc;

-- states
select distinct state, count(*) AS total_customers
from upi_transactions
group by State
order by total_customers desc;

-- City
select distinct City, count(*) AS total_customers
from upi_transactions
group by City
order by total_customers desc;

-- Merchant_Category
select distinct Merchant_Category, count(*) AS total_customers
from upi_transactions
group by Merchant_Category
order by total_customers desc;

-- Payment_Mode
select distinct Payment_Mode, count(*) AS total_customers
from upi_transactions
group by Payment_Mode
order by total_customers desc;

-- Bank_Name
select distinct Bank_Name, count(*) AS total_customers
from upi_transactions
group by Bank_Name
order by total_customers desc;

select SUM(amount_inr) as Amount
from upi_transactions

-- KPI's--

-- 1. how many Transaction are recorded
select count (Transaction_ID) as trandaction_counts
from upi_transactions

-- 2. Total transaction Amount has register
select concat(
				cast(sum (Amount_INR)/10000000 as decimal(13,2)),
					'cr'
				)as trandaction_amt_cr
from upi_transactions

-- 2. Total transaction Amount has register
select concat(
				cast(sum (Cashback_INR)/100000 as decimal(13,2)),
					'L'
				)as trandaction_amt_L
from upi_transactions;

-- Total percentage of success rate of UPI
SELECT 
		Status,
		CAST(COUNT(*)*100.0/SUM(COUNT(*)) OVER() as decimal (10,2)) as 'percentage_%'
FROM upi_transactions
GROUP BY Status;

-- how many customer are faced suspected_frauds
select Is_Suspected_Fraud,COUNT(*) AS frauds
from upi_transactions
GROUP BY Is_Suspected_Fraud;

--  Business Problems

-- Transaction Amount (INR) by Overtime (Daily)
SELECT 
		Transaction_Date,
		CONCAT(
				CAST(SUM(Amount_INR)/10000000.0 AS DECIMAL (10,2))
				,'cr')AS amt_inr_cr
FROM upi_transactions
GROUP BY Transaction_Date
ORDER BY Transaction_Date ASC;

--  Transaction Amount (INR) by UPI_App wise %
SELECT 
		UPI_App,
		CAST(
			SUM(Amount_INR)*100.0/SUM(SUM(AMOUNT_INR)) OVER()
				AS decimal(13,2)
					) AS 'Percentage_%'
FROM upi_transactions
GROUP BY UPI_App
ORDER BY 'Percentage_%' DESC;

-- Transaction by status %
SELECT 
		Status,
		CAST(
			COUNT(*)*100.0/SUM(COUNT(*)) OVER() 
				as decimal (10,2)
					) as 'percentage_%'
FROM upi_transactions
GROUP BY Status;

-- Transaction Amount (INR) by states wise
SELECT 
		State,
		CONCAT(
				CAST(SUM(Amount_INR)/10000000.0 AS DECIMAL (10,2))
				,'cr')AS amt_inr_cr
FROM upi_transactions
GROUP BY State
ORDER BY amt_inr_cr DESC;

-- Transaction Amount (INR) by Banks wise
SELECT 
		Bank_Name,
		CONCAT(
				CAST(SUM(Amount_INR)/10000000.0 AS DECIMAL (10,2))
				,'cr')AS amt_inr_cr
FROM upi_transactions
GROUP BY Bank_Name
ORDER BY amt_inr_cr DESC;

-- Transaction Amount (INR) by Tansaction Type
SELECT 
		Transaction_Type,
		CONCAT(
				CAST(SUM(Amount_INR)/10000000.0 AS DECIMAL (10,2))
				,'cr')AS amt_inr_cr
FROM upi_transactions
GROUP BY Transaction_Type
ORDER BY amt_inr_cr DESC;

-- Transaction Amount (INR) by Hours
SELECT 
		Transaction_Time,
		CONCAT(
				CAST(SUM(Amount_INR)/10000.0 AS DECIMAL (10,2))
				,'k')AS amt_inr_cr
FROM upi_transactions
GROUP BY Transaction_Time
ORDER BY amt_inr_cr DESC;

-- Transaction Amount (INR) by Day & Hours
SELECT 
		Transaction_Date,
		Transaction_Time,
		CAST(SUM(Amount_INR) AS DECIMAL (10,2)) AS amt_inr_cr
FROM upi_transactions
GROUP BY Transaction_Date,Transaction_Time
ORDER BY Transaction_Date ASC;