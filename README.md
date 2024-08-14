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

* ACID stands for Atomicity, Consistency, Isolation, Durability.  These properties ensure reliable transactions
**   Atomicity: Ensures that all operations within a transaction are completed successfullyÅ
##### Consistency: Ensures that the database remains in a consistent state before and after the transactionÅ
##### Isolation: Ensures that transactions are isolated from each other
#####  Durability: Ensures that once a transaction is committed, it remains committed.
