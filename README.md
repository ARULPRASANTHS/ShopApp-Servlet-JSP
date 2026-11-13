# ShopApp: Book Shop Management & Billing System

Web application built with Java Servlets, JSP, JSTL, JDBC and MySQL, following MVC and DAO patterns.

## Features
- Book management: add, edit, delete, list
- Billing: generate a bill with customer name and quantity
- Dashboard: total books, total bills, total sales, low-stock count

## Tech Stack
Java, Servlet, JSP, JSTL, JDBC, MySQL, Apache Tomcat 10.1, Eclipse

## Architecture
- `controller/`: Servlets (request handling)
- `dao/`: database access (JDBC, PreparedStatement)
- `model/`: Book, Bill (POJOs)
- `util/`: DBConnection
- `webapp/`: JSP views

## Setup
1. Run `schema.sql` in MySQL
2. Set environment variable `DB_PASS` (optional: `DB_URL`, `DB_USER`)
3. Import the project in Eclipse as a Dynamic Web Project
4. Run on Apache Tomcat 10.1
5. Open `http://localhost:8080/ShopApp/`

## Screenshots

### Dashboard
![Dashboard](screenshots/dashboard.png)

### Books
![Books](screenshots/books.png)

### Bills
![Bills](screenshots/bills.png)