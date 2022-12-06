## DBMS_LAB
# List of experiments 
~~~
1. Familiarize yourself with the various database languages.

2. A library wants to maintain the record of books, members, book issue, book return,

and fines collected for late returns, in a database. The database can be loaded with

book information. Students can register with the library to be a member. Books can

be issued to students with a valid library membership. A student can keep an issued

book with him/her for a maximum period of two weeks from the date of issue,

beyond which a fine will be charged. Fine is calculated based on the delay in days of

return. For 0-7 days: Rs 10, For 7 – 30 days: Rs 100, and for days above 30 days: Rs

10 will be charged per day.

Create a normalized database design with proper tables, columns, column types,

and constraints.

3. Create an ER diagram for the above database design.

4. Write SQL commands to

a. Create a database by name Library. Drop the database and re-create it.

b. Create DDL statements and create the tables and constraints (from the design) in

the

database created in step-a (Library) Notes: [ Create a script file and execute it.

Create the script file in such a way that,,if the

table exists, drop the tables and recreate )]

c. Create and execute DROP TABLE command in tables with and without

FOREIGN

KEY constraints.

d. Create and execute ALTER TABLE command in tables with data and without

data.

e. Create and execute SQL commands to build indices on Member_Id and Book_Id
on

table Book_Issue.

f. Create and execute GRANT/REVOKE commands on tables.

g. Create and execute SQL commands to insert data into each of the tables designed

h. Learn and execute bulk import of data to tables from CSV files (insert 1000

records of

books into the BOOK table from a CSV file).

i. Create and execute UPDATE/DELETE commands on tables. Try to update/delete

rows with Primary and Foreign Keys. Try bulk updates or deletes using SQL

UPDATE statement.

5. Write SQLQuery to retrieve the following information

a. Get the number of books written by a given author

b. Get the list of publishers and the number of books published by each publisher

c. Get the names of authors who jointly wrote more than one book.

d. Get the list of books that are issued but not returned

e. Get the list of students who reads only ‘Malayalam’ books

f. Get the total fine collected for the current month and current quarter

g. Get the list of students who have overdue (not returned the books even on due

date)

h. Calculate the fine (as of today) to be collected from each overdue book.

i. Members who joined after Jan 1 2021 but has not taken any books.

6. Create a bank database according to the following specification

Account(accno,cid,bid,amount,adate)

Customer(cid,cname,city)

Borrower(loanno,cid,bid,amount)

Branch(bid,bname,city) . And give SQL query for solving following problmes ?Also

draw E-R diagram?
a. Give names of customers living in kochi city?

b. Give name of branches at mg road?

c. Give names of depositors have been account at mg road?

d. Give names of customers having loan and living in city Calicut?

e. List the customers having deposit in the branch where average deposit in

the branch is more than 32000?

f. List all the branches having sum of deposit more than 5000?

g. List the branch having sum of deposit more than 32000 and

located in city Trivandrum?

h. List the name of customers having maximum deposit?
i. List the name of branch having largest no of depositors?

j. List the name of customers having largest no of deposits?

k. Give the names of cities in which maximum branches are allocated?

l. Give the name of a branch where no of depositors more than 2?

m. List all customers who are depositors but not borrowers?

n. List customers who are depositors or borrowers and living in city kochi?

o. List the amount of total loan?

p. Give the name of customers having the highest deposit in the branch

where arun is having the deposit?

7. A database is being constructed for the world cricket championship. A team in the

championship is the country in a continent. The jersey colour of each team is

unique.A team has no. of players each of whose dob and category must be

recorded in the database along with other details .Every match in the

championship is scheduled prior to the beginning of the championship. The team

which won a match and the total no of centuries scored in the match is recorded.

The performance of a player in a match is measured in no of runs scored and

wickets taken in the match.Represent the database with ER model, by clearly

identifying entities ,cardinality and all the attributes .

Derive relational schema from the ER model for each table by clearly identifying

all columns ,primary and foreign keys. Based on the relational schema, express

the following queries in SQL?

a. Find the names of all players in a team having jourcy colour Blue?

b. Find the name of continent from where largest no of teams are participated

in the championship?

c. Find the no of Bowlers in the Indian team?

d. Find the name of teams which have large no of bowlers? Find the name of

players who have born before 16/10/1990?

e. Find the names of players more than 30 years old?

f. Find the name of each player and the no of centuries he scored?
g. Find the man of the series of the championship?

h. Find the name of the team which failed in most of matches?Find the name of

the team who have scored more than 200 runs in the championship?

i. Name of the bowler from asian continent who has taken least no of wickets?

j. Name of the teams blongs to a…a?

k. Date of the match on which least no of runs scored?

l. Duration in months of the championship?

8. Based on the description in question 2, Book return should insert an entry into the

Book_Return table and also update the status in Book_Issue table as ‘Returned’.

Create a database TRANSACTION to do this operation (stored procedure).

9. Create a database view ‘Available_Books’, which will list out books that are

currently available in the library.

10. Create a database procedure to add, update and delete a book to the Library

database (use parameters).

11. Use cursors and create a procedure to print Books Issue Register (page wise – 20

rows in a page)

12. Create a history table (you may use the same structure without any keys) for the

MEMBER table and copy the original values of the row being updated to the history

table using a TRIGGER.

13. Write a program which will accept Employee no: and calculate the bonus as per the

following criterion:

Salary Bonus

<15000 20% of salary

15001-40000 15% of salary

40001-80000 10% of salary

>80001 5% of salary

Cursor

14. Display details of first two employees whose id starts from ‘E102’ and have salary <

30000 using CURSOR.

15. To write a Cursor to display the Department wise list of Employees with total Salary

in each department.

Function and Procedure

16. Write a function that takes employee name as parameter and returns the number of

employees with this name. Use the function to update details of employees with

unique names. For other cases, the program (not the function) should display error
