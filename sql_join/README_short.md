
## 1. Retrieve Books with Their Authors

You will work with:

books
- ```id```
- ```title```
- ```author_id```
- ```price```

authors
- ```id```
- ```name```
- ```country```

Relationship Reminder
- Each book has an ```author_id```
- This refers to ```authors.id```

This is a one-to-many (1–N) relationship:
- one author → many books

Write a SQL query that returns:
- the book title
- the author name

Expected Output

Your result must contain exactly two columns, in this order:
```
title | author_name
```
Each row represents one book and its corresponding author.

Requirements

You must use:
- ```INNER JOIN```

You must explicitly define the join condition using:
- ```ON```

Column names must match exactly:
- ```title```
- ```author_name``` (use alias if needed)

Results must be in ascending ordered by ```title```.

Output Example (format only)
```
Alice in Wonderland | Lewis Carroll
1984 | George Orwell
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 1-books-with-authors.sql  

--------------------------------------------------------------------------------------

## 2. List All Authors and Their Books

Relevant Tables

authors
```id```
```name```
```country```

books
```id```
```title```
```author_id```

Write a SQL query that returns:
- the author name
- the book title (if any)

Expected Output

Your result must contain exactly two columns, in this order:
```
author_name | title
```
- Each row represents:
- an author and one of their books
- or an author with ```NULL``` if they have no books

Requirements

You must use:
- ```LEFT JOIN```

You must explicitly define the join condition using:
- ```ON```

Column names must match exactly:
- ```author_name```
- ```title```

Results must be in ascending order by ```author_name``` and ```title```.

Output Example (format only)
```
Agatha Christie | Murder on the Orient Express
Agatha Christie | Death on the Nile
George Orwell | 1984
Unknown Author | NULL
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 2-authors-with-books.sql  

-------------------------------------------------------------------------------------- 

## 3. List Students and Their Courses

Relevant Tables

students
- ```id```
- ```name```

courses
- ```id```
- ```title```

enrollments
- ```student_id```
- ```course_id```

Relationship Reminder
- ```enrollments.student_id``` refers to ```students.id```
- ```enrollments.course_id``` refers to ```courses.id```

This means:
- one student → many enrollments
- one course → many enrollments
- together, ```enrollments``` connects students and courses

Write a SQL query that returns:
- the student name
- the course title

Each row must represent one enrollment.

Expected Output

Your result must contain exactly two columns, in this order:
```
student_name | course_title
```

Requirements

You must use:
- ```INNER JOIN```

You must join three tables

You must explicitly define join conditions using:
- ```ON```

Column names must match exactly:
- ```student_name```
- ```course_title```

Results must be in ascending ordered by ```student_name```, then ```course_title```.

Output Example (format only)
```
Alice Johnson | Databases
Alice Johnson | Web Development
Brian Smith | Algorithms
Carla Gomez | Databases
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 3-students-and-courses.sql  

--------------------------------------------------------------------------------------

## 4. List All Courses and Their Students

Relevant Tables

courses
- ```id```
- ```title```

enrollments
- ```course_id```
- ```student_id```

students
- ```id```
- ```name```

Relationship Reminder

- ```enrollments.course_id``` refers to ```courses.id```
- ```enrollments.student_id``` refers to ```students.id```

A course can have:
- many enrollments
- or no enrollments at all

Write a SQL query that returns:
- the course title
- the student name, if one exists

Each row must represent:
- one course-student enrollment
- or one course with ```NULL``` if no students are enrolled

Expected Output

Your result must contain exactly two columns, in this order:
```
course_title | student_name
```

Requirements

You must use:
- ```LEFT JOIN```

You must join three tables

You must explicitly define join conditions using:
- ```ON```

Column names must match exactly:
- ```course_title```
- ```student_name```

Results must be in ascending ordered by ```course_title```, then ```student_name```.

Note: if a course has no students, ```student_name``` will be ```NULL```.

Output Example (format only)
```
Algorithms | Brian Smith
Databases | Alice Johnson
Databases | Carla Gomez
Operating Systems | NULL
Web Development | Alice Johnson
```
Example:
```
Databases | Alice Johnson
Databases | Carla Gomez
Operating Systems | NULL
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 4-courses-and-students.sql  

--------------------------------------------------------------------------------------

## 5. Find Students Enrolled in At Least One Course

Relevant Tables

students
- ```id```
- ```name```

enrollments
- ```student_id```
- ```course_id```

Write a SQL query that returns:
- the student name

Only include students who appear in the ```enrollments``` table.

Expected Output

Your result must contain exactly one column:
```
student_name
```

Each row must represent a student who is enrolled in at least one course.

Requirements
- You must use:
- a subquery

You must use:
- ```IN```

Column name must match exactly:
- ```student_name```

Results must be in ascending ordered by ```student_name```.

Output Example (format only)
```
Alice Johnson
Brian Smith
Carla Gomez
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 5-students-with-enrollments.sql  

--------------------------------------------------------------------------------------

## 6. Find Courses with Above-Average Enrollment

Relevant Tables

courses
- ```id```
- ```title```

enrollments
- ```course_id```
- ```student_id```

Write a SQL query that returns:
- the course title

Only include courses where the number of enrollments is greater than the average across all courses.

Expected Output

Your result must contain exactly one column:
```
course_title
```

Requirements

You must use:
- ```GROUP BY```
- ```COUNT()```
- a subquery

You must compare against:
- an aggregated value (average)

Column name must match exactly:
- ```course_title```

Results must be in ascending ordered by ```course_title```.

Output Example (format only)
```
Databases
Web Development
```
Repo:

GitHub repository: holbertonschool-data_modeling_and_persistence  
Directory: sql_join  
File: 6-courses-above-average.sql  

--------------------------------------------------------------------------------------