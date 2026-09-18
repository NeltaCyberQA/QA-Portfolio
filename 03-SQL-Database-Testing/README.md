# SQL Database Testing Project — Disney Reservations

## Project Overview

This project demonstrates hands-on database testing using MySQL and MySQL Workbench. I created and tested a sample Disney restaurant reservation database to validate data accuracy, data integrity, business rules, database constraints, and relationships between tables.

Testing included CRUD operations, data filtering, NULL validation, duplicate primary key validation, CHECK constraint testing, aggregate queries, pattern matching, and JOIN validation.

## Testing Scope

- Database creation and table setup
- Test data creation using INSERT statements
- Data retrieval using SELECT queries
- Filtering with WHERE, AND, OR, and LIKE
- Sorting using ORDER BY
- Record counting using COUNT
- Data grouping using GROUP BY
- UPDATE and DELETE validation
- NULL data validation
- PRIMARY KEY uniqueness testing
- CHECK constraint validation
- Negative database testing
- JOIN validation between related tables
- Data integrity and business rule validation

- ## Database Test Cases

| Test Case | Validation | Expected Result | Actual Result | Status |
|---|---|---|---|---|
| DB-TC-001 | Invalid Party Size | Database rejects party_size = 0 | MySQL rejected the INSERT with CHECK constraint Error 3819 | PASS |
| DB-TC-002 | Duplicate Reservation ID | Database rejects duplicate reservation_id | MySQL rejected duplicate PRIMARY KEY value with Error 1062 | PASS |
| DB-TC-003 | Missing Guest Name | No reservation should contain a NULL guest_name | 1 reservation contained a NULL guest_name | FAIL |
| DB-TC-004 | Reservation / Restaurant JOIN | Reservation data matches corresponding restaurant details | 7 records returned matching restaurant information | PASS |

## Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- GitHub

## Skills Demonstrated

**Database Testing • SQL Queries • CRUD Validation • Data Integrity • Data Quality Testing • Primary Key Validation • Constraint Testing • Negative Testing • NULL Validation • JOIN Testing • Business Rule Validation**

## Key Finding

During database validation, a reservation record was identified with a NULL guest name even though the business requirement states that every reservation should contain a guest name.

The SQL query successfully identified the record, resulting in a **FAIL** for the data-quality requirement. This demonstrates how database testing can identify data integrity issues that may not be immediately visible through the user interface.
