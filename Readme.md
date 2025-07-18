# Banking Management Database

<img width="5110" height="3008" alt="output" src="https://github.com/user-attachments/assets/cf8bf00d-cd5b-4706-a5a6-43044b3f21d6" />


## Overview

The **Banking Management Database** is a PostgreSQL-based solution designed to model, organize, and manage core banking operations. It includes well-structured tables, relationships, triggers, views, procedures, and user-defined functions to support efficient financial data management, customer tracking, transaction handling, and loan administration.

This project can serve as a backend framework for banking applications, educational purposes, or reference for database architecture best practices.
## Table of Contents

- [File Descriptions](#Filedescriptions)
- [ERD Diagrams](#erd-diagrams)
- [License](#license)


## File Descriptions

- **01_creating_schema.sql**: Contains the SQL commands to create all the required tables for the database.
- **02_create_constraints.sql**: Adds necessary constraints, including foreign keys, to ensure data integrity.
- **03_create_indexes.sql**: Creates indexes to optimize performance for frequent queries.
- **insert_data.sql**: Inserts initial sample data into various tables, such as `Customers`, `Accounts`, etc.
- **Triggers**: Automate certain actions in the database (e.g., logging changes, enforcing constraints).
- **Procedures**: Defines stored procedures for performing common operations related to accounts, customers, loans, etc.
- **Functions**: Contains custom functions for specific calculations and operations relevant to banking processes.
- **Views**: Establishes views for simplified data retrieval across different entities.

## ERD Diagrams

The project includes Entity-Relationship Diagrams (ERD) that visually represent the database structure and relationships between entities. These diagrams can be found in the `/erd` directory, specifically in the `output.png` file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
