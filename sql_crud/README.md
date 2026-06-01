# SQL - CRUD Operations
  
---
  
Provided Files
  
You will be given a SQLite database file for some tasks found in ```books_dataset.db```

Table: ```books```
![alt text](image.png)
  
General Requirements
- Environment used for correction:
- Ubuntu 20.04
- SQLite 3.x (CLI)
- Each task must be written in a .sql file
- Each task must use:
- one SQL query only, unless stated otherwise
- Queries must be executable using:
```
sqlite3 books.db < file.sql
```
Output must:
- match exactly the expected result
- include correct column order
- include correct row order when required
- if ordering is required, you must use:
```
ORDER BY
```
Do not:
- modify table structure unless explicitly instructed
- use joins or subqueries
- use non-standard SQL unless explicitly allowed
  
---
  
## 0. Understanding and Creating a Table
  
Create a SQL file:
```
0-create_table.sql
```
In this file, write a SQL query that creates a table named books with the following columns:
![alt text](image-1.png)
  
Requirements
- The table must be created using a single ```CREATE TABLE``` statement
- You must define appropriate SQL types for each column
- The column ```id``` must uniquely identify each row
- Some columns should not accept ```NULL``` values where it makes sense
- The schema must be logically consistent
  
Constraints
- You must not use any SQLite-specific shortcuts that would not exist in standard SQL unless strictly necessary
- You must not copy an example blindly — you are expected to:
- review documentation
- understand column types
- decide appropriate constraints
  
Repo:

- GitHub repository: holbertonschool-data_modeling_and_persistence  
- Directory: sql_crud  
- File: 0-create_table.sql  

---
  
## 1. Inserting Data into a Table
  
Create a SQL file:
```
1-insert_data.sql
```
In this file, write SQL queries to insert the following rows into the ```books``` table.
  
Dataset to insert
  
You must insert exactly these records:  
![alt text](image-3.png)
  
Requirements
- You must use ```INSERT INTO``` statements
- You must insert all rows into the existing books table
- Each row must contain values for all columns
- Values must match exactly the dataset provided
  
Constraints  
- You must not modify the table structure
- You must not delete or update rows in this task
- You must not use any non-standard SQL syntax
- You must not rely on SQLite-specific shortcuts (such as implicit column ordering assumptions without understanding them)
  
Repo:  
  
GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 1-insert_data.sql  
  
---
  
## 2. Retrieving All Data from a Table
  
Create a SQL file:
```
2-select_all.sql
```
Write a SQL query that retrieves:
- all columns
- all rows
from the ```books``` table.
  
Requirements
- You must use a ```SELECT``` statement
- The query must return:
- every column in the table
- every row in the table
- The query must be written using standard SQL syntax
  
Constraints
  
You must not:
- filter rows
- sort results
- limit results
- modify the data
- You must not use multiple queries
- You must not assume any implicit ordering
  
Repo:  
  
GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 2-select_all.sql  
  
---
  
## 3. Selecting Specific Columns
  
Create a SQL file:
```
3-select_columns.sql
```
Write a SQL query that returns:
- the ```title```
- the ```price```
for all books in the table.
  
Requirements
- You must use a ```SELECT``` statement
- You must return only the following columns:
- ```title```
- ```price```
- You must return all rows
- The order of columns in the result must be:
1. ```title```
2. ```price```
  
Constraints
  
You must not:
- use ```SELECT *```
- filter rows
- sort results
- limit results
- You must write a single SQL query
- You must use valid and standard SQL syntax
  
Repo:
  
GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 3-select_columns.sql  
  
---
  
## 4. Filtering Rows
  
You must create the following SQL files.
  
Each file must contain one single SQL query.
  
4.1 Filter by exact value
  
Create:
```
4-filter_by_genre.sql
```
Write a query that returns:
- ```title```
- ```author```
for all books where:
- ```genre = 'Tech'```
  
4.2 Filter using comparison
  
Create:
```
4-filter_by_price.sql
```
Write a query that returns:
- ```title```
- ```price```
  
for all books where:
- ```price > 20```
  
4.3 Filter using AND
  
Create:
```
4-filter_with_and.sql
```
Write a query that returns:
- ```title```
- ```price```
  
for all books where:
- ```genre = 'Tech'```
- AND ```price > 30```
  
4.4 Filter using OR
  
Create:
```
4-filter_with_or.sql
```
Write a query that returns:
- ```title```
- ```genre```
  
for all books where:
- ```genre = 'Fantasy'```
- OR ```price < 10```
  
Requirements
  
For all files:
  
You must use:
- ```SELECT```
- ```WHERE```
- You must return exactly the requested columns
- You must use valid and standard SQL syntax
- Each file must contain only one query
  
Constraints
  
You must not:
- use ```SELECT *```
- modify the database
- use joins or subqueries
- You must not rely on implicit ordering
  
Repo:  
  
GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 4-filter_by_genre.sql 4-filter_by_price.sql 4-filter_with_and.sql 4-filter_with_or.sql  
  
---
  
## 5. Updating Rows

You must create the following SQL files.

Each file must contain one single SQL query.

5.1 Update one row using the primary key

Create:
```
5-update_by_id.sql
```
Write a query that updates the price of the book with:
- ```id = 3```

Setting the new value to:
- ```35.00```

5.2 Update multiple rows using a condition

Create:
```
5-update_by_condition.sql
```
Write a query that increases the ```stock``` by ```5``` for all books where:
- ```published_year < 2000```

5.3 Update multiple rows using a compound condition

Create:
```
5-update_with_and.sql
```
Write a query that decreases the ```price``` by ```10%``` for all books where:
- ```genre = 'Tech'```
- AND ```stock > 5```

Requirements

For all files:
- You must use an ```UPDATE``` statement
- You must use a ```SET``` clause
- You must use a ```WHERE``` clause
- Each file must contain exactly one SQL query

Additional requirements by file:
- ```5-update_by_id.sql``` must target the row using ```id```
- ```5-update_by_condition.sql``` must update all matching rows
- ```5-update_with_and.sql``` must use both conditions correctly

Constraints

You must not:
- modify the schema
- use ```ALTER TABLE```, ```DROP```, or any schema-changing statement
- use multiple queries in the same file
- use joins or subqueries
In ```5-update_by_id.sql```, you must use:
- ```id``` in the ```WHERE``` clause
- You must update only the column(s) requested in each file

Repo:  
  
GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 5-update_by_id.sql 5-update_by_condition.sql 5-update_with_and.sql  
  
---
  
## 6. Deleting Rows

You must create the following SQL files.

Each file must contain one single SQL query.

6.1 Delete one row using the primary key

Create:
```
6-delete_by_id.sql
```
Write a query that deletes the row where:
- ```id = 8```

6.2 Delete multiple rows using a condition

Create:
```
6-delete_by_condition.sql
```
Write a query that deletes all rows where:
- ```stock = 0```

6.3 Delete multiple rows using a compound condition

Create:
```
6-delete_with_and.sql
```
Write a query that deletes all rows where:
- ```published_year < 1950```
- AND ```price < 9```

Requirements

For all files:
- You must use a ```DELETE``` statement
- You must use a ```WHERE``` clause
- Each file must contain exactly one SQL query

Additional requirements by file:
- ```6-delete_by_id.sql``` must target the row using ```id```
- ```6-delete_by_condition.sql``` must delete all matching rows
- ```6-delete_with_and.sql``` must use both conditions correctly

Constraints

You must not:
- modify the schema
- use ```ALTER TABLE```, ```DROP```, or any schema-changing statement
- use multiple queries in the same file
- use joins or subqueries

In ```6-delete_by_id.sql```, you must use:
- ```id``` in the ```WHERE``` clause
- You must delete only the rows requested in each file
  
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 6-delete_by_id.sql 6-delete_by_condition.sql 6-delete_with_and.sql  

---

## 7. Ordering and Limiting Results

You must create the following SQL files.

Each file must contain one single SQL query.

7.1 Order results ascending

Create:
```
7-order_by_price_asc.sql
```
Write a query that returns:
- ```title```
- ```price```
for all books, ordered by:
- ```price``` in ascending order

7.2 Order results descending

Create:
```
7-order_by_year_desc.sql
```
Write a query that returns:
- ```title```
- ```published_year```

for all books, ordered by:
- ```published_year``` in descending order

7.3 Limit results

Create:
```
7-limit_results.sql
```
Write a query that returns:
- ```title```
- ```price```

for the 3 cheapest books

7.4 Combine ORDER BY and LIMIT

Create:
```
7-order_and_limit.sql
```
Write a query that returns:
- ```title```
- ```stock```

for the 5 books with the highest stock

Requirements

For all files:
- You must use ```SELECT```
- You must return exactly the requested columns
- You must use ```ORDER BY``` when sorting is required
- You must use ```LIMIT``` when restricting results

Constraints

You must not:
- use ```SELECT *```
- modify the database
- use joins or subqueries
- Each file must contain exactly one SQL query
- Ordering must be explicit when required

Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 7-order_by_price_asc.sql 7-order_by_year_desc.sql 7-limit_results.sql 7-order_and_limit.sql  

---

## 8. Aggregate Functions

You must create the following SQL files.

Each file must contain one single SQL query.

8.1 Count total rows

Create:
```
8-count_books.sql
```
Write a query that returns:
- the total number of books in the table

8.2 Calculate average price

Create:
```
8-average_price.sql
```
Write a query that returns:
- the average value of the ```price``` column

8.3 Find maximum stock

Create:
```
8-max_stock.sql
```
Write a query that returns:
- the maximum value of the ```stock``` column

8.4 Calculate total stock

Create:
```
8-total_stock.sql
```
Write a query that returns:
- the total number of units available (sum of ```stock```)

8.5 Find minimum price

Create:
```
8-min_price.sql
```
Write a query that returns:
- the minimum value of the ```price``` column

Requirements

For all files:
- You must use ```SELECT```
- You must use the appropriate aggregate function
- Each file must contain exactly one SQL query
- Each query must return a single value

Constraints

You must not:
- use ```SELECT *```
- modify the database
- use joins or subqueries
- You must not return multiple columns unless required
- Each query must produce a deterministic result

Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 8-count_books.sql 8-average_price.sql 8-max_stock.sql 8-total_stock.sql 8-min_price.sql  

--- 

## 9. Grouping Data with ```GROUP BY```

You must create the following SQL files.

Each file must contain one single SQL query.

9.1 Count books by genre

Create:
```
9-count_by_genre.sql
```
Write a query that returns:
- ```genre```
- the number of books in that genre

for all genres in the table.

9.2 Average price by genre

Create:
```
9-average_price_by_genre.sql
```
Write a query that returns:
- ```genre```
- the average price of books in that genre

for all genres in the table.

9.3 Total stock by genre

Create:
```
9-total_stock_by_genre.sql
```
Write a query that returns:
- ```genre```
- the total stock for that genre

for all genres in the table.

9.4 Count books by author

Create:
```
9-count_by_author.sql
```
Write a query that returns:
- ```author```
- the number of books written by that author

for all authors in the table.

Requirements

For all files:
- You must use ```SELECT```
- You must use an aggregate function
- You must use ```GROUP BY```
- You must return exactly the requested columns
- Each file must contain exactly one SQL query

Constraints

You must not:
- use ```SELECT *```
- modify the database
- use joins or subqueries
- You must not return columns that are not requested
- If a query includes both grouped and aggregated values, they must be logically consistent

Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 9-count_by_genre.sql 9-average_price_by_genre.sql   9-total_stock_by_genre.sql 9-count_by_author.sql  

---

## 10. Integrative Queries and Data Manipulation

You must create the following SQL files.

10.1 Retrieve available technical books

Create:
```
10-select_tech_books.sql
```
A user wants to see:

all technical books that were published in or after the year 2000

Return:
- ```title```
- ```price```
- ```stock```

10.2 Increase stock for low-availability books

Create:
```
10-increase_stock.sql
```
A user wants to restock books that are running low.

Update the dataset so that:

all books with fewer than 5 units available receive 3 additional units in stock

10.3 Remove unavailable books

Create:
```
10-delete_zero_stock.sql
```
A user wants to clean the dataset by removing:

all books that are no longer available (no units in stock)

10.4 Find the cheapest available books

Create:
```
10-cheapest_available.sql
```
A user wants to see:

the 4 cheapest books that are currently available in stock

Return:
- ```title```
- ```price```

The result must be ordered so that the cheapest books appear first.

10.5 Total stock per genre

Create:
```
10-stock_by_genre.sql
```
A user wants to understand inventory distribution.

Return:
- each genre
- the total number of units available for that genre

10.6 Average price per genre

Create:
```
10-average_price_by_genre.sql
```
A user wants to compare pricing across categories.

Return:
- each genre
- the average price of books in that genre

Requirements

For all files:
- Each file must contain exactly one SQL query
- You must choose the correct SQL statement based on the requirement:
- ```SELECT```, ```UPDATE```, or ```DELETE```
- You must return exactly the requested columns when applicable
- Queries must produce correct and deterministic results

Constraints

You must not:
- modify the schema
- use ```ALTER TABLE```, ```DROP```, or any schema-changing statement
- use joins or subqueries
- write multiple queries in the same file

You must:
- use ```WHERE``` when row targeting is required
- use ```ORDER BY``` and ```LIMIT``` when needed
- use aggregate functions and ```GROUP BY``` when required

Expected Behavior

Each file will be executed independently:
```
sqlite3 books_dataset.db < file.sql
```
The checker will validate:
- the grouped column
- the aggregated value
- the correctness of the result set
- the exact number of rows returned

Guidance (Read Carefully)

1. ```GROUP BY``` creates groups of rows

Instead of treating the whole table as one set, SQL will split it into smaller sets based on the grouped column.

For example:

- all ```Fantasy``` books together
- all ```Tech``` books together
- all ```Sci-Fi``` books together

2. Aggregate functions are applied per group

After rows are grouped, the aggregate function is calculated separately for each group.

That is why one query can return multiple rows, each representing a category.

3. Be careful about selected columns

When using ```GROUP BY```, the columns in the ```SELECT``` clause must make sense.

In this task, each result row should include:
- the grouping column
- one aggregated value

4. Result ordering

The order of grouped results is not guaranteed unless you explicitly sort them.

If ordering is required in a later task, it will be stated explicitly.

For this task, do not assume any implicit order.

What You Are Learning

By completing this task, you will:
- group rows by a category
- apply aggregate functions per group
- understand the difference between whole-table summaries and grouped summaries
- write analytical SQL queries

Common Mistakes to Avoid
- Forgetting ```GROUP BY```
- Grouping by the wrong column
- Using the wrong aggregate function
- Returning extra columns
- Confusing grouped output with simple row selection

Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_crud  
File: 10-select_tech_books.sql 10-increase_stock.sql 10-delete_zero_stock.sql 10-cheapest_available.sql 10-stock_by_genre.sql 10-average_price_by_genre.sql  
