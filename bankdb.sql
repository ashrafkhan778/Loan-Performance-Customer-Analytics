create database bankdb ;
use bankdb ;
-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    address VARCHAR(255),
    phone VARCHAR(15),
    email VARCHAR(100)
);
ALTER TABLE customers
ADD gender VARCHAR(10),
ADD job_title VARCHAR(100);

-- Create the loans table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    loan_type VARCHAR(50),
    application_date DATE,
    approval_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);








-- Create the repayments table
CREATE TABLE repayments (
    repayment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);

-- Create the credit_scores table
CREATE TABLE credit_scores (
    customer_id INT,
    score INT,
    score_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the transactions table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_type VARCHAR(50),
    transaction_date DATE,
    transaction_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- Insert customers data
INSERT INTO customers (customer_id, name, age, address, phone, email) VALUES
(1, 'Rajesh Kumar', 35, 'Mumbai, Maharashtra', '9876543210', 'rajesh.kumar@email.com'),
(2, 'Sita Sharma', 29, 'Delhi', '9123456789', 'sita.sharma@email.com'),
(3, 'Ravi Singh', 40, 'Bangalore', '9345678910', 'ravi.singh@email.com'),
(4, 'Priya Mehta', NULL, 'Hyderabad, Telangana', NULL, 'priya.mehta@email.com'),
(5, 'Ajay Patil', 38, 'Pune', '9988776655', 'ajay.patil@email.com'),
(6, 'Neha Gupta', 27, 'Chennai', '9098765432', 'neha.gupta@email.com'),
(7, 'Manoj Verma', 50, 'Kolkata', NULL, 'manoj.verma@email.com'),
(8, 'Anjali Deshmukh', 32, 'Mumbai', '9888776655', NULL),
(9, 'Suresh Reddy', 45, 'Hyderabad', '9000123456', 'suresh.reddy@email.com'),
(10, 'Vijay Kumar', 36, 'Delhi', '9888776655', 'vijay.kumar@email.com');

INSERT INTO customers (customer_id, name, age, address, phone, email) VALUES
(11, 'Kavita Agarwal', 28, 'Lucknow, Uttar Pradesh', '9876501234', 'kavita.agarwal@email.com'),
(12, 'Sunil Yadav', 33, 'Jaipur, Rajasthan', '9987612345', 'sunil.yadav@email.com'),
(13, 'Renu Patel', 41, 'Surat, Gujarat', '9876543212', 'renu.patel@email.com'),
(14, 'Deepak Sharma', 26, 'Indore, Madhya Pradesh', '9098761234', 'deepak.sharma@email.com'),
(15, 'Simran Kaur', 30, 'Chandigarh', '9212345678', 'simran.kaur@email.com'),
(16, 'Anil Joshi', 43, 'Ahmedabad, Gujarat', '9333445566', 'anil.joshi@email.com'),
(17, 'Manisha Mehta', 36, 'Bhopal, Madhya Pradesh', '9123456780', 'manisha.mehta@email.com'),
(18, 'Nitin Dubey', 28, 'Varanasi, Uttar Pradesh', '9345678912', 'nitin.dubey@email.com'),
(19, 'Sanjay Gupta', 38, 'Kochi, Kerala', '9807654321', 'sanjay.gupta@email.com'),
(20, 'Neetu Singh', 34, 'Bhubaneswar, Odisha', '9988776653', 'neetu.singh@email.com'),
(21, 'Ramesh Rathi', 55, 'Nagpur, Maharashtra', '9223345566', 'ramesh.rathi@email.com'),
(22, 'Aruna Pandey', 31, 'Patna, Bihar', '9188776654', 'aruna.pandey@email.com'),
(23, 'Vikram Singh', 39, 'Kanpur, Uttar Pradesh', '9333445561', 'vikram.singh@email.com'),
(24, 'Kiran Kumari', 26, 'Jaipur, Rajasthan', '9098765436', 'kiran.kumari@email.com'),
(25, 'Gurpreet Kaur', 29, 'Ludhiana, Punjab', '9178765432', 'gurpreet.kaur@email.com'),
(26, 'Ashok Kumar', 50, 'Delhi', '9123456709', 'ashok.kumar@email.com'),
(27, 'Pooja Shah', 40, 'Ahmedabad, Gujarat', '9876789012', 'pooja.shah@email.com'),
(28, 'Bhavesh Patel', 32, 'Vadodara, Gujarat', '9198765435', 'bhavesh.patel@email.com'),
(29, 'Pooja Choudhary', 33, 'Ranchi, Jharkhand', '9345678907', 'pooja.choudhary@email.com'),
(30, 'Satish Reddy', 42, 'Chennai', '9245678901', 'satish.reddy@email.com'),
(31, 'Suman Yadav', 35, 'Jaipur, Rajasthan', '9034787654', 'suman.yadav@email.com'),
(32, 'Kailash Rathi', 48, 'Patna, Bihar', '9334556789', 'kailash.rathi@email.com'),
(33, 'Kartik Mehra', 25, 'Delhi', '9023456780', 'kartik.mehra@email.com'),
(34, 'Neha Verma', 37, 'Noida, Uttar Pradesh', '9112345678', 'neha.verma@email.com'),
(35, 'Suraj Kumar', 44, 'Lucknow, Uttar Pradesh', '9201234567', 'suraj.kumar@email.com');


UPDATE customers
SET gender = 'Male', job_title = 'Software Engineer'
WHERE customer_id = 1;

UPDATE customers
SET gender = 'Female', job_title = 'Marketing Manager'
WHERE customer_id = 2;

UPDATE customers
SET gender = 'Male', job_title = 'Data Analyst'
WHERE customer_id = 3;

UPDATE customers
SET gender = 'Female', job_title = 'HR Manager'
WHERE customer_id = 4;

UPDATE customers
SET gender = 'Male', job_title = 'Sales Executive'
WHERE customer_id = 5;

UPDATE customers
SET gender = 'Female', job_title = 'Graphic Designer'
WHERE customer_id = 6;

UPDATE customers
SET gender = 'Male', job_title = 'Project Manager'
WHERE customer_id = 7;

UPDATE customers
SET gender = 'Female', job_title = 'Financial Analyst'
WHERE customer_id = 8;

UPDATE customers
SET gender = 'Male', job_title = 'Operations Manager'
WHERE customer_id = 9;

UPDATE customers
SET gender = 'Male', job_title = 'IT Consultant'
WHERE customer_id = 10;

UPDATE customers
SET gender = 'Female', job_title = 'Content Writer'
WHERE customer_id = 11;

UPDATE customers
SET gender = 'Male', job_title = 'Civil Engineer'
WHERE customer_id = 12;

UPDATE customers
SET gender = 'Female', job_title = 'Doctor'
WHERE customer_id = 13;

UPDATE customers
SET gender = 'Male', job_title = 'Mechanical Engineer'
WHERE customer_id = 14;

UPDATE customers
SET gender = 'Female', job_title = 'Event Planner'
WHERE customer_id = 15;

UPDATE customers
SET gender = 'Male', job_title = 'Teacher'
WHERE customer_id = 16;

UPDATE customers
SET gender = 'Female', job_title = 'Pharmacist'
WHERE customer_id = 17;

UPDATE customers
SET gender = 'Male', job_title = 'Business Analyst'
WHERE customer_id = 18;

UPDATE customers
SET gender = 'Male', job_title = 'Accountant'
WHERE customer_id = 19;

UPDATE customers
SET gender = 'Female', job_title = 'Software Developer'
WHERE customer_id = 20;

UPDATE customers
SET gender = 'Male', job_title = 'Bank Manager'
WHERE customer_id = 21;

UPDATE customers
SET gender = 'Female', job_title = 'Nurse'
WHERE customer_id = 22;

UPDATE customers
SET gender = 'Male', job_title = 'Entrepreneur'
WHERE customer_id = 23;

UPDATE customers
SET gender = 'Female', job_title = 'Lawyer'
WHERE customer_id = 24;

UPDATE customers
SET gender = 'Female', job_title = 'Fashion Designer'
WHERE customer_id = 25;

UPDATE customers
SET gender = 'Male', job_title = 'Civil Contractor'
WHERE customer_id = 26;

UPDATE customers
SET gender = 'Female', job_title = 'Digital Marketer'
WHERE customer_id = 27;

UPDATE customers
SET gender = 'Male', job_title = 'Architect'
WHERE customer_id = 28;

UPDATE customers
SET gender = 'Female', job_title = 'HR Consultant'
WHERE customer_id = 29;

UPDATE customers
SET gender = 'Male', job_title = 'Software Architect'
WHERE customer_id = 30;

UPDATE customers
SET gender = 'Female', job_title = 'Interior Designer'
WHERE customer_id = 31;

UPDATE customers
SET gender = 'Male', job_title = 'Real Estate Agent'
WHERE customer_id = 32;

UPDATE customers
SET gender = 'Male', job_title = 'Cyber Security Analyst'
WHERE customer_id = 33;

UPDATE customers
SET gender = 'Female', job_title = 'Finance Executive'
WHERE customer_id = 34;

UPDATE customers
SET gender = 'Male', job_title = 'Retail Manager'
WHERE customer_id = 35;


-- Insert loans data
INSERT INTO loans (loan_id, customer_id, loan_amount, loan_type, application_date, approval_date, status) VALUES
(1, 1, 500000, 'Home Loan', '2024-01-15', '2024-01-20', 'Approved'),
(2, 2, 300000, 'Personal Loan', '2024-02-01', '2024-02-05', 'Approved'),
(3, 3, 800000, 'Car Loan', '2024-03-10', '2024-03-12', 'Rejected'),
(4, 4, 1000000, 'Home Loan', '2024-04-01', NULL, 'Pending'),
(5, 5, 200000, 'Personal Loan', '2024-05-05', '2024-05-10', 'Approved'),
(6, 6, 150000, 'Personal Loan', '2024-06-01', NULL, 'Pending'),
(7, 7, 1200000, 'Car Loan', '2024-07-10', '2024-07-15', 'Approved'),
(8, 8, 250000, 'Home Loan', '2024-08-01', NULL, 'Pending'),
(9, 9, 700000, 'Personal Loan', '2024-09-05', '2024-09-10', 'Approved'),
(10, 10, 400000, 'Home Loan', '2024-10-15', '2024-10-20', 'Approved');

-- Insert repayments data
INSERT INTO repayments (repayment_id, loan_id, payment_date, payment_amount) VALUES
(1, 1, '2024-02-01', 50000),
(2, 2, '2024-03-01', 30000),
(3, 3, '2024-04-01', 40000),
(4, 5, '2024-06-01', 25000),
(5, 7, '2024-08-01', 150000),
(6, 9, '2024-11-01', 50000),
(7, 10, '2024-12-01', 60000);

INSERT INTO loans (loan_id, customer_id, loan_amount, loan_type, application_date, approval_date, status) VALUES
(11, 11, 600000, 'Home Loan', '2024-01-18', '2024-01-23', 'Approved'),
(12, 12, 400000, 'Personal Loan', '2024-02-10', '2024-02-15', 'Rejected'),
(13, 13, 700000, 'Car Loan', '2024-03-05', '2024-03-07', 'Approved'),
(14, 14, 1200000, 'Home Loan', '2024-04-10', NULL, 'Pending'),
(15, 15, 250000, 'Personal Loan', '2024-05-12', '2024-05-17', 'Approved'),
(16, 16, 1000000, 'Home Loan', '2024-06-20', NULL, 'Pending'),
(17, 17, 500000, 'Car Loan', '2024-07-15', '2024-07-20', 'Approved'),
(18, 18, 800000, 'Personal Loan', '2024-08-05', '2024-08-10', 'Approved'),
(19, 19, 200000, 'Home Loan', '2024-09-15', NULL, 'Pending'),
(20, 20, 900000, 'Car Loan', '2024-10-25', '2024-10-30', 'Approved'),
(21, 21, 550000, 'Personal Loan', '2024-01-12', '2024-01-18', 'Approved'),
(22, 22, 700000, 'Home Loan', '2024-02-05', '2024-02-10', 'Approved'),
(23, 23, 450000, 'Car Loan', '2024-03-12', '2024-03-15', 'Rejected'),
(24, 24, 650000, 'Home Loan', '2024-04-18', '2024-04-22', 'Approved'),
(25, 25, 300000, 'Personal Loan', '2024-05-20', '2024-05-25', 'Pending'),
(26, 26, 500000, 'Home Loan', '2024-06-25', '2024-07-01', 'Approved'),
(27, 27, 1000000, 'Car Loan', '2024-07-05', '2024-07-10', 'Approved'),
(28, 28, 400000, 'Personal Loan', '2024-08-15', NULL, 'Pending'),
(29, 29, 700000, 'Home Loan', '2024-09-20', '2024-09-25', 'Approved'),
(30, 30, 600000, 'Car Loan', '2024-10-30', '2024-11-05', 'Rejected'),
(31, 31, 550000, 'Personal Loan', '2024-01-20', '2024-01-25', 'Approved'),
(32, 32, 800000, 'Home Loan', '2024-02-15', NULL, 'Pending'),
(33, 33, 200000, 'Car Loan', '2024-03-20', '2024-03-23', 'Approved'),
(34, 34, 450000, 'Personal Loan', '2024-04-25', NULL, 'Pending'),
(35, 35, 900000, 'Home Loan', '2024-05-30', '2024-06-05', 'Approved');



-- Insert credit_scores data
INSERT INTO credit_scores (customer_id, score, score_date) VALUES
(1, 720, '2024-01-01'),
(2, 680, '2024-02-01'),
(3, 750, '2024-03-01'),
(4, 710, '2024-04-01'),
(5, 690, '2024-05-01'),
(6, 740, '2024-06-01'),
(7, 720, '2024-07-01'),
(8, NULL, '2024-08-01'),
(9, 710, '2024-09-01'),
(10, 700, '2024-10-01');


INSERT INTO credit_scores (customer_id, score, score_date) VALUES
(11, 680, '2024-01-05'),
(12, 720, '2024-02-10'),
(13, 690, '2024-03-10'),
(14, 710, '2024-04-15'),
(15, 730, '2024-05-15'),
(16, 700, '2024-06-10'),
(17, 740, '2024-07-20'),
(18, 690, '2024-08-10'),
(19, 750, '2024-09-10'),
(20, 710, '2024-10-05'),
(21, 720, '2024-01-12'),
(22, 680, '2024-02-15'),
(23, 710, '2024-03-15'),
(24, 700, '2024-04-20'),
(25, 740, '2024-05-25'),
(26, 680, '2024-06-15'),
(27, 730, '2024-07-25'),
(28, 690, '2024-08-20'),
(29, 710, '2024-09-20'),
(30, 720, '2024-10-10'),
(31, 740, '2024-01-25'),
(32, 710, '2024-02-20'),
(33, 690, '2024-03-25'),
(34, 750, '2024-04-30'),
(35, 720, '2024-05-30');



-- Insert transactions data
INSERT INTO transactions (transaction_id, customer_id, transaction_type, transaction_date, transaction_amount) VALUES
(1, 1, 'Deposit', '2024-01-20', 50000),
(2, 2, 'Withdrawal', '2024-02-05', 20000),
(3, 3, 'Deposit', '2024-03-12', 100000),
(4, 4, 'Deposit', '2024-04-01', 200000),
(5, 5, 'Withdrawal', '2024-05-10', 50000),
(6, 6, 'Deposit', '2024-06-01', 75000),
(7, 7, 'Withdrawal', '2024-07-15', 120000),
(8, 8, 'Deposit', '2024-08-01', 200000),
(9, 9, 'Withdrawal', '2024-09-10', 40000),
(10, 10, 'Deposit', '2024-10-20', 60000);

INSERT INTO transactions (transaction_id, customer_id, transaction_type, transaction_date, transaction_amount) VALUES
(11, 11, 'Deposit', '2024-01-25', 150000),
(12, 12, 'Withdrawal', '2024-02-12', 30000),
(13, 13, 'Deposit', '2024-03-17', 50000),
(14, 14, 'Deposit', '2024-04-18', 180000),
(15, 15, 'Withdrawal', '2024-05-22', 70000),
(16, 16, 'Deposit', '2024-06-10', 120000),
(17, 17, 'Withdrawal', '2024-07-25', 90000),
(18, 18, 'Deposit', '2024-08-15', 220000),
(19, 19, 'Withdrawal', '2024-09-20', 60000),
(20, 20, 'Deposit', '2024-10-05', 80000),
(21, 21, 'Deposit', '2024-01-30', 130000),
(22, 22, 'Withdrawal', '2024-02-20', 25000),
(23, 23, 'Deposit', '2024-03-22', 40000),
(24, 24, 'Deposit', '2024-04-25', 150000),
(25, 25, 'Withdrawal', '2024-05-30', 60000),
(26, 26, 'Deposit', '2024-06-20', 170000),
(27, 27, 'Withdrawal', '2024-07-30', 110000),
(28, 28, 'Deposit', '2024-08-25', 250000),
(29, 29, 'Withdrawal', '2024-09-15', 90000),
(30, 30, 'Deposit', '2024-10-10', 100000),
(31, 31, 'Withdrawal', '2024-01-10', 40000),
(32, 32, 'Deposit', '2024-02-25', 220000),
(33, 33, 'Withdrawal', '2024-03-28', 35000),
(34, 34, 'Deposit', '2024-04-15', 110000),
(35, 35, 'Withdrawal', '2024-05-18', 50000);

-- 1 Total Number of Customers:

select count(customer_id) As Total_Number_customers 
from  Customers;

--  2 Total Number of Loans:

select count(*) As No_Loans
from Loans ;

--  3 Total Loan Amount Outstanding:


select sum(loan_amount) As total_loan_outstanding 
from Loans ;

-- 4 Total Repayments Made:

select sum(payment_amount) As Total_Repayments_Amount
from Repayments ;

-- 5 Total Transaction Amount:


select sum(transaction_amount) As Total_Transaction_Amount
from Transactions ;

-- 6 Total Credit Score for All Customers:
select  sum(score) As Total_Credit_Score
from credit_scores ;

--  7 Average Loan Amount per Customer:


select customer_id , avg(loan_amount) Average_Loan_Amount
from loans
group by customer_id ;

-- 8 Average Credit Score:

select avg(score) As Avgrage_Credit_Score
from  credit_scores ;

-- 9 Average Transaction Amount:



select avg(transaction_amount) As Average_Transaction_Amount
from Transactions ;

-- 10 Approved Loan Count:


select count(*) AS Active_Loan_Count
from Loans
where status = 'Approved' ;

-- Aggregated Data for Dashboard Insights

-- 11 Loan Amounts by Type:



select loan_type ,sum(loan_amount) As Total_Loan_Amount
from loans
group by loan_type ;

-- 12 Repayment Status Summary:


select  status , count(*) As repayment_count 
from loans
group by status ;

-- 13 Loan Amounts by Status:

select status ,sum(loan_amount) As Total_Loan_Amount
from loans 
group by status ;


-- 14 Top 5 Customers by Loan Amount:



select customer_id , sum(loan_amount) Total_Loan_Amount
from loans
group by customer_id
order by  Total_Loan_Amount desc limit 5 ;

-- 15 Repayments by Loan Type:


select l.loan_type ,sum(r.payment_amount) As Total_Repayments_Amount
from loans l 
left join Repayments r on l.loan_id = r.loan_id
group by l.loan_type  ;

-- 16 Total Loan Amount per Customer:

select c.name ,sum(l.loan_amount) As Total_Loan_Amount
from Customers c
left join loans l on c.customer_id = l.customer_id
group by  c.name  ;

-- 17 Number of Customers with Loans by Type:



select loan_type , count(distinct customer_id) No_Customers
from loans
group by  loan_type ;

 -- 18 Credit Score Distribution:


select score ,count(*) score_count
from credit_scores 
group by score 
order by score desc ;

--  19 Monthly Loan Applications:

SELECT EXTRACT(MONTH FROM application_date) AS month, COUNT(*) AS loan_count
FROM loans
GROUP BY month
ORDER BY month;

-- 20 Transactions per Customer:

select * from Transactions ;

select customer_id ,count(*) As total_transactions
from Transactions
group by customer_id ;


-- 21 Customer Details with Loan and Repayment Info:


select c.name ,l.loan_type ,l.loan_amount,r.payment_amount
from  Customers c 
left join loans l on c.customer_id = l.customer_id
left join Repayments r on  l.loan_id = r.loan_id ;

-- 22 Customer Transactions and Loan Info:

select c.name ,t.transaction_type ,t.transaction_amount, l.loan_amount
from customers c
left join Transactions t on c.customer_id = t.customer_id
left join loans l on c.customer_id = l.customer_id ;

-- 23 Customers with Loan and Credit Score Info:


select c.name ,l.loan_amount ,cs.score
from Customers c 
left join Loans l on c.customer_id = l.customer_id
left join credit_scores cs on c.customer_id = cs.customer_id ;


-- 24 Top 5 Customers by Total Repayments:

select c.name ,sum(r.payment_amount) As Total_Repayments
from Customers c
left join loans l  on c.customer_id = l.customer_id
left join Repayments r  on l.loan_id = r.loan_id
group by  c.name 
order by Total_Repayments desc limit 5 ;

-- 25 Loan Amount vs Repayment by Customer:
 
select c.name , sum(l.loan_amount) As Total_Loan_Amount , sum(r.payment_amount) As Total_Repayment_Amount
from Customers c 
left join loans l on c.customer_id = l.customer_id
left join Repayments r on l.loan_id= r.loan_id
group by c.name ;

-- 26 Percentage of loan applications approved versus total applications. 

SELECT 
  (COUNT(CASE WHEN status = 'Approved' THEN 1 END) / COUNT(*)) * 100 AS approval_rate
FROM loans;

-- 27 Loan Status Summary Using CASE:

select loan_id,
	   case
             when status ='Approved' Then 'Loan Approved'
             when status = 'Pending' Then 'Loan Pending'
             Else 'Loan Rejected'
	  End as Loan_Status
from loans ;

-- 28 Classifying Loan Amounts:

select * from loans ;

select loan_id,loan_amount, 
	   case 
             when loan_amount < 400000  Then 'Low Loan Amount'
             when loan_amount between 400000   and 800000  Then 'Medium Loan Amount'
             Else 'High Loan Amount'
	  End As loan_amount_category
from loans ;

-- 29 Customer Credit Score Category:

select * from credit_scores ;

select customer_id ,score ,
       case 
              when score is null Then 'Data Not Available'
              when score < 600 Then 'Poor credit Scores'
              when score between 600 and 700 Then 'Average_Credit Scores'
              Else 'High Credit Scores'
	  End As  Credit_Scores_Classification
from credit_scores ;
	

-- 30 Transaction Types Using CASE:

select * from  Transactions ;

select transaction_id,transaction_amount ,
       case 
            when transaction_type = 'Deposit' Then 'Income'
            when transaction_type = 'Withdrawal' Then 'Expense'
            Else 'Other'
	   End As transaction_category  
from Transactions ;

-- 31 Loan Approval Status Using CASE:

select * from loans ;

select loan_id, 
        case 
              when approval_date is  null Then 'Pending'
              Else 'Approved'
		End As Loan_status
from loans ;

-- 32: Percentage of loans that are overdue (no repayment made).

SELECT 
  (COUNT(CASE WHEN repayment_id IS NULL THEN 1 END) / COUNT(*)) * 100 AS delinquency_rate
FROM loans
LEFT JOIN repayments ON loans.loan_id = repayments.loan_id;

-- WHERE due_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '30' DAY;

-- 33 Loans Due for Repayment in the Next 30 Days:
select * from loans ;

select loan_id,loan_amount ;


SELECT loan_id, loan_amount, due_date
FROM loans
WHERE due_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '30' DAY;

-- 34 Top 5 Loan Types with Highest Outstanding Loan Amount:


select loan_type ,sum(loan_amount) As Total_Outstanding_Amount
from loans 
group by loan_type 
order by Total_Outstanding_Amount desc limit 5 ;

-- 35 Number of Loans in Default by Customer:

select * from loans ;

SELECT c.name, COUNT(*) AS defaulted_loans
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.status = 'Rejected'
GROUP BY c.customer_id;

-- 37 Credit Score and Loan Amount for Each Customer:

select * from Customers ;
select * from loans ;
select * from credit_scores ;

select c.name ,cs.score ,l.loan_amount
from Customers c 
left join credit_scores cs on c.customer_id = cs.customer_id
left join loans l on c.customer_id = l.customer_id ;

-- 38 Active Loan Summary by Loan Type:

select * from loans ;
SELECT loan_type, COUNT(*) AS active_loans, SUM(loan_amount) AS total_loan_amount
FROM loans
WHERE status = 'Approved'
GROUP BY loan_type;

-- 39 Customers Without Repayments:

select * from customers ;
select * from repayments ;
select * from loans ;
SELECT c.name
FROM customers c
LEFT JOIN loans l ON c.customer_id = l.customer_id
left join repayments r on l.loan_id = r.loan_id
WHERE r.repayment_id IS NULL;

-- 40 Repayment Progress for Each Loan:

SELECT l.loan_id, l.loan_amount, SUM(r.payment_amount) AS total_repayment
FROM loans l
LEFT JOIN repayments r ON l.loan_id = r.loan_id
GROUP BY l.loan_id;

-- 41 Loan approval rate (percentage of approved loans)

SELECT 
    (COUNT(CASE WHEN status = 'Approved' THEN 1 END) * 100.0 / COUNT(*)) AS approval_rate 
FROM loans;

-- Loans with no repayments yet
SELECT l.loan_id, c.name, l.loan_amount 
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
LEFT JOIN repayments r ON l.loan_id = r.loan_id
WHERE r.repayment_id IS NULL;
