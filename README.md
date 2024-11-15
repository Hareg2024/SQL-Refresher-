# SQL-Refresher-
This is Repository is for a refresher purpose 

Table name: Customer record
Columns: Age, Gender, State, Names

# Test 1
Write an SQL (Sequel) query
*  to find all the customers who are between the ages of 16 and 25
* customers that either live in Tamasia, Brooklyn, Beverly
* Their gender isn't n/a
* And their names starts with either a 'C' or an 'O'
and order it by age

SELECT *
FROM Customer record
WHERE (Age BETWEEN 16 AND 25)
AND (State IN ("Tamasia", "Brooklyn", "Beverly"))
AND (Gender != n/a)
AND (Names LIKE "C%" OR Names LIKE "O%" )
ORDER BY Age;


 ![image](https://github.com/user-attachments/assets/6bca9987-8caa-46a2-bbc9-466afda615af)

# Test 2
Using the same table, write a query

* Of customers that are either 18 or 20
* Customers that live in Brooklyn
* gender isn't female and N/A
* Names contains a stone in it
and order it in a descending order by age

SELECT *
FROM Customer record
WHERE (Age = 18 OR Age =20)
AND (State = "Brooklyn")
AND (Gender NOT IN ("female", "N/A"))
AND (Names LIKE "%stone%")
ORDER BY Age DESC;


![image](https://github.com/user-attachments/assets/59a66913-f49b-410e-b1f7-578d7bfd839f)

# Test 3 
*  Retrieve unique records from a table

  SELECT DISTINCT Names, Age
  FROM Customer records;

# Test 4
*  What is the difference between DELETE and TRUNCATE commands?
    * DELETE removes rows based on a condition and can be rolled back if used within a transaction.
    * TRUNCATE removes all rows from a table without logging individual row deletions and cannot be rolled back.
# Test 5
*  Explain the difference between a stored procedure and a function.
    * A stored procedure performs a task but doesn't return a value. A function performs a calculation and returns a value. Functions can be used in SQL expressions; procedures cannot.
# Test 6
  * Table name: Customer record Columns: Age, Gender, State, Names
  *  What are triggers? Provide an example.
     *  Triggers are automatic actions performed when specified events occur in a database. For example, we create a trigger to Age column.To autocorrect Age to 18 when age entered as less than 18.
   
       ![image](https://github.com/user-attachments/assets/18f4571c-a8f6-497b-88ab-a5db4b4a2da6)
# Test 7
*  What are window functions in SQL?
   *  Window functions perform calculations across a set of table rows related to the current row, providing ranking, aggregating, and offset functionalities.
 
     ![image](https://github.com/user-attachments/assets/d34fc5a4-9bf0-4ae9-b78c-0d6977d8403b)


# Test 8
### How do you optimize a SQL query for performance?
  *   Optimize by using indexes, avoiding unnecessary columns in SELECT, avoiding wildcards in SELECT, using appropriate JOINs, and ensuring proper use of WHERE clauses.
### What are the differences between SQL and NoSQL databases?
  *  SQL databases are relational and use structured query language for defining and manipulating data. They are table-based.
  *  NoSQL databases are non relational, can be document-based, key value pairs, graph databases, and are designed for distributed data stores.
###  How do you ensure data integrity in SQL databases?
* Use constraints like primary keys, foreign keys, unique constraints, and check constraints. Implement ACID properties and proper indexing.
# Test 9
  * How do you handle transactions in SQL?

     ![image](https://github.com/user-attachments/assets/e74b5313-ce28-46b0-965d-b0b0abf549fd)
# Test 10
### Explain the use of the MERGE statement.
 * MERGE allows you to perform INSERT, UPDATE, or DELETE operations in a single statement.
   ![image](https://github.com/user-attachments/assets/0f847c86-837e-454b-801b-bd4ee44373b8)
###  How do you implement recursive queries in SQL?

  
   ![image](https://github.com/user-attachments/assets/3b1b6c81-efdb-460f-908c-df680c7cc0a6)

 ### What is ACID property in the context of databases?

#### ACID stands for Atomicity, Consistency, Isolation, Durability.  These properties ensure reliable transactions
  * Atomicity: Ensures that all operations within a transaction are completed successfully
  * Consistency: Ensures that the database remains in a consistent state before and after the transaction
  * Isolation: Ensures that transactions are isolated from each other
  * Durability: Ensures that once a transaction is committed, it remains committed.

# Test 11 
* Create a stored procedure to find user defined even numbers 

![image](https://github.com/user-attachments/assets/5604dbf3-cd0b-441b-81f5-cc41a92bbe0c)


# Data cleaning  Refresher

### Remove duplicates 


![image](https://github.com/user-attachments/assets/a217237d-697d-4932-9a11-1d139ceaceab)

### Handling Missing Data

![image](https://github.com/user-attachments/assets/5bb1628d-a80f-47b2-8805-ee2dfdd298f6)

### Standardize date formats 

![image](https://github.com/user-attachments/assets/ba5ea5ff-fb8a-40fa-8b52-7e22e3534cf4)

### Handling outliers 

![image](https://github.com/user-attachments/assets/d685f129-04a0-4aaf-af6f-74cb34b1656a)

### Removing unnecessary data from the record 

![image](https://github.com/user-attachments/assets/28f03597-467b-42e3-9d1d-063bd1e2a12f)


## Problem Statement:

You are given a dataset of stock prices with columns stock_id, date, and price. For each stock on each date, you need to calculate a new column, price_change, which represents the direction of price movement compared to the previous day's price for the same stock. The expected values in the price_change column are:

"NULL" if there is no previous day's price (e.g., the first date for each stock).
"UP" if the price has increased from the previous day.
"DOWN" if the price has decreased from the previous day.
"SAME" if the price remains the same as the previous day.

Your task is to transform the input data by adding the price_change column with the specified values, as shown in the expected output.

![image](https://github.com/user-attachments/assets/0e56680e-3012-4443-936b-6cafbc043064)





