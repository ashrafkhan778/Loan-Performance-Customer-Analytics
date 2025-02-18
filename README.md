# Loan Performance & Customer Analytics

## Overview
This repository contains Power BI reports for Loan Performance & Customer Analytics, providing insights into loan approvals, customer credit scores, repayment trends, and loan status distribution.

## Files Included
- `bankdb.sql`: SQL script for setting up the banking database.
- `Loan Performance & Customer Analytics.pdf`: Report summarizing key loan analytics.
- `an Prediction.pbix`: Power BI dashboard for interactive analysis.

## Features
- Customer demographics & credit score insights.
- Loan approval & rejection trends.
- Loan amount distribution by type and gender.
- Monthly repayment analysis.

## How to Use
1. **Import SQL Database**
   - Load `bankdb.sql` into MySQL using:
     ```sh
     mysql -u your_username -p your_database_name < bankdb.sql
     ```
2. **Open Power BI Report**
   - Use Power BI Desktop to open `an Prediction.pbix` and explore insights.

## Contribution
Feel free to contribute by enhancing the reports or database. Fork the repository and submit a pull request.

## License
This project is open-source and free to use.

Based on the provided Power BI report and data, here are some key insights into Loan Performance & Customer Analytics:

1. Loan Approval & Rejection Trends
Approval Rate: 60% of loan applications were approved.
Rejection Rate: 11.43% of applications were rejected.
Pending Applications: 28.57% of applications are still in review.
2. Loan Amount Distribution by Loan Type
Home Loans account for the largest share of loan amounts.
Car Loans and Personal Loans have smaller distributions but still significant.
3. Credit Score Analysis
Customers with Credit Scores 700-800 are more likely to get approved.
High-risk customers (Credit Score <600) face a higher rejection rate.
4. Customer Demographics
Most loan applicants fall in the 26-45 age group.
Male applicants receive more loans than female applicants, but approval rates are similar.
5. Loan Default Rates
Personal Loans have the highest default rate compared to other loan types.
Car Loans also show some risk, but Home Loans tend to have lower default rates.
6. Loan Repayments Over Time
Monthly repayment trends show spikes in specific months, possibly due to seasonal factors or promotional offers.


## Author
Maintained by [Ashradf Ahmad Khan]

