# UPI Transaction Analysis | SQL Project

## Project Objective

To analyze 500K+ UPI transaction records across India using SQL to identify transaction trends, evaluate payment performance, understand customer and merchant behavior, and detect potential fraudulent activities. The objective is to generate data-driven insights into transaction volumes, payment success rates, UPI app performance, regional trends, banking performance, and fraud risks to support better business decisions.

## Project Overview

This project analyzes UPI transaction data to understand digital payment patterns and evaluate the overall performance of UPI transactions across different cities and states in India.

The analysis focuses on:

- Transaction volume and transaction amount trends
- UPI app-wise transaction performance
- Successful and failed transaction patterns
- State-wise and bank-wise transaction performance
- Customer transaction behavior
- Transaction patterns by time and day
- Merchant-wise UPI payment distribution
- Suspected fraudulent transactions and risk analysis
- Cashback distribution across transactions

## Dataset Overview

The dataset contains **500K+ UPI transaction records** from different cities and states across India.

### Key Columns

| Column Name | Description |
|---|---|
| `transaction_id` | Unique transaction identifier |
| `transaction_date` | Date of transaction |
| `transaction_time` | Time of transaction |
| `upi_app` | UPI application used |
| `customer_id` | Unique customer identifier |
| `age_group` | Customer age category |
| `gender` | Customer gender |
| `state` | State of transaction |
| `cities` | City of transaction |
| `merchant_name` | Merchant or business name |
| `merchant_category` | Merchant business category |
| `transaction_type` | Type of transaction |
| `payment_mode` | Mode of payment |
| `bank_name` | Bank associated with transaction |
| `amount_INR` | Transaction amount in INR |
| `cashback_INR` | Cashback received |
| `Transaction_fee_inr` | Transaction fee |
| `status` | Transaction status |
| `failure_reason` | Reason for transaction failure |
| `device_OS` | Operating system of device |
| `Risk_Score` | Transaction risk score |
| `Is_suspected_fraud` | Indicates suspected fraudulent activity |

## Key Performance Indicators (KPIs)

The following KPIs were analyzed to evaluate overall UPI transaction performance:

1. **Total Transactions:** Number of transactions recorded.
2. **Total Transaction Amount:** Overall transaction value registered in INR.
3. **Total Cashback:** Total cashback amount distributed across transactions.
4. **UPI Success Rate (%):** Percentage of successfully completed transactions.
5. **Suspected Fraud Customers:** Number of unique customers associated with suspected fraudulent transactions.

## Business Analysis

The following business questions were explored using SQL:

### Q1. Daily Transaction Trends
- How does the transaction amount change over time on a daily basis?

### Q2. UPI App Performance
- What is the percentage contribution of each UPI app to the total transaction amount?

### Q3. Transaction Status Analysis
- What is the percentage distribution of successful, failed, and other transaction statuses?

### Q4. State-wise Transaction Analysis
- Which states contribute the highest transaction amounts?

### Q5. Bank-wise Transaction Analysis
- Which banks process the highest transaction amounts?

### Q6. Transaction Type Analysis
- How does the transaction amount vary across different transaction types?

### Q7. Hourly Transaction Analysis
- During which hours are the highest transaction amounts recorded?

### Q8. Day and Hour Analysis
- How do transaction patterns vary across different days of the week and hours of the day?

### Q9. Merchant-wise UPI Payments
- Which merchants receive the highest volume or value of UPI payments?

## Tools & Technologies Used

- **Microsoft Excel:** Data exploration and preliminary analysis.
- **SQL Server Management Studio (SSMS):** Running SQL queries and analyzing data.
- **SQL:** Data analysis using filtering, grouping, aggregate functions, date functions, and other SQL operations.

## Key Learning Outcomes

- Improved SQL querying and data analysis skills.
- Experience analyzing large datasets with 500K+ records.
- Understanding of digital payment transaction patterns.
- Ability to calculate business KPIs using SQL.
- Experience identifying transaction failures and potential fraud patterns.
- Translating raw transaction data into meaningful business insights.

## Conclusion

This project provides an analytical view of UPI payment performance across India. By examining transaction trends, UPI applications, banks, merchants, customer behavior, and suspected fraud activities, the analysis helps identify important patterns and potential areas for improving digital payment performance and security.

---

**Project Name:** UPI-Transaction-Analysis  
**Domain:** FinTech | Digital Payments  
**Tools:** SQL | Microsoft Excel | SSMS
