# Final-Project-Restaurant-Order-Management-System

## Overview
This project is a database-backed application designed to manage restaurant orders. It demonstrates proper database design, normalization, and SQL implementation using Oracle.

## Features
- Manage customers and restaurants
- Store menu items for each restaurant
- Process customer orders
- Track order details and quantities
- Record payment information

## Database Design
The database consists of the following tables:
- Customer
- Restaurant
- Menu_Item
- Orders
- Order_Details
- Payment

The design follows normalization up to Third Normal Form (3NF), ensuring minimal redundancy and proper data integrity.

## Relationships
- A customer can place multiple orders
- A restaurant can have multiple menu items
- An order belongs to one customer and one restaurant
- Orders and menu items have a many-to-many relationship resolved by Order_Details
- Each order has an associated payment

## SQL Files

### schema.sql
Contains all CREATE TABLE statements, including primary keys, foreign keys, and constraints.

### sample_data.sql
Provides INSERT statements with representative data for testing.

### reset.sql
Drops all tables to reset the database.

## How to Run

1. Run `reset.sql` (if needed)
2. Run `schema.sql`
3. Run `sample_data.sql`

## Technologies Used
- Oracle Database
- SQL
- GitHub for version control
