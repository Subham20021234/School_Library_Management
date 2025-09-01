# BookSquare — School Library Management System

BookSquare is a **Java Servlet & JSP-based web application** designed to simplify library management for schools and educational institutions.  
It provides an easy-to-use interface to **add, view, update, and delete books**, track borrowed books, and manage the library efficiently.

---

## Features

- **Add Books** — Add new books to the collection with details like name, price, author, and status.
- **View Books** — Browse all books with current availability and borrowing details.
- **Edit/Update Books** — Modify book information and update their status.
- **Delete Books** — Remove outdated or lost books from the catalog.
- **Borrow Tracking** — Store borrowed date and duration.
---

## 🛠️ Tech Stack

- **Backend**: Java Servlet, JSP  
- **Frontend**: JSP with Tailwind CSS, Feather Icons  
- **Database**: MySQL (JDBC)  
- **Server**: Apache Tomcat  
- **Build Tool / IDE**: Eclipse  

---

## 📂 Project Structure

School_Library_Management/
├── src/
│ └── com/library/
│ ├── dao/ # Database Access (BookDAO)
│ ├── model/ # Book model class
│ └── servlet/ # Servlets: Add, Edit, Delete, View Books
├── WebContent/
│ ├── *.jsp # JSP pages (addBook.jsp, viewBooks.jsp, etc.)
│ ├── css/ # Custom CSS
│ └── WEB-INF/
│ └── web.xml # Servlet mappings (if any)
└── README.md

---

## 🚀 Getting Started

### Prerequisites
- JDK 8 or later
- Apache Tomcat 9+ (or similar)
- MySQL / H2 database
- Eclipse IDE (or any Java IDE)

## ⚙️ Setup & Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/Subham20021234/School_Library_Management.git
   cd School_Library_Management

---

## Configure MySQL Database

2.Create a database school_library.

3.Create a table books:
CREATE TABLE books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DOUBLE,
  author VARCHAR(100),
  status VARCHAR(50),
  borrowed_date DATE,
  borrowed_days INT
);

4.Update database credentials
In BookDAO.java, update:

private String jdbcURL = "jdbc:mysql://localhost:3306/school_library";
private String jdbcUsername = "root";
private String jdbcPassword = "your-password";

5.Deploy to Tomcat

Right-click project → Run on Server

6.Access the Application at:
http://localhost:8080/SchoolLibrary/

📄 License

This project is for educational purposes. You may modify and use it in your own institution.

