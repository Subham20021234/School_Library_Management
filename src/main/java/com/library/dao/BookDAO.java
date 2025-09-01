package com.library.dao;

import com.library.model.Book;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/school_library";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1234";
    
    private static final String INSERT_BOOK_SQL = "INSERT INTO books (name, price, author, status, borrowed_date, borrowed_days) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_BOOK_BY_ID = "SELECT * FROM books WHERE id = ?";
    private static final String SELECT_ALL_BOOKS = "SELECT * FROM books";
    private static final String DELETE_BOOK_SQL = "DELETE FROM books WHERE id = ?";
    private static final String UPDATE_BOOK_SQL = "UPDATE books SET name = ?, price = ?, author = ?, status = ?, borrowed_date = ?, borrowed_days = ? WHERE id = ?";
    
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    // Insert book
    public void insertBook(Book book) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL)) {
            preparedStatement.setString(1, book.getName());
            preparedStatement.setDouble(2, book.getPrice());
            preparedStatement.setString(3, book.getAuthor());
            preparedStatement.setString(4, book.getStatus());
            preparedStatement.setDate(5, book.getBorrowedDate() != null ? 
                new java.sql.Date(book.getBorrowedDate().getTime()) : null);
            preparedStatement.setInt(6, book.getBorrowedDays());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
    // Select book by id
    public Book selectBook(int id) {
        Book book = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String author = rs.getString("author");
                String status = rs.getString("status");
                Date borrowedDate = rs.getDate("borrowed_date");
                int borrowedDays = rs.getInt("borrowed_days");
                book = new Book(id, name, price, author, status, borrowedDate, borrowedDays);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return book;
    }
    
    // Select all books
    public List<Book> selectAllBooks() {
        List<Book> books = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOKS)) {
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String author = rs.getString("author");
                String status = rs.getString("status");
                Date borrowedDate = rs.getDate("borrowed_date");
                int borrowedDays = rs.getInt("borrowed_days");
                books.add(new Book(id, name, price, author, status, borrowedDate, borrowedDays));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return books;
    }
    
    // Delete book
    public boolean deleteBook(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_BOOK_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    // Update book
    public boolean updateBook(Book book) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_BOOK_SQL)) {
            statement.setString(1, book.getName());
            statement.setDouble(2, book.getPrice());
            statement.setString(3, book.getAuthor());
            statement.setString(4, book.getStatus());
            statement.setDate(5, book.getBorrowedDate() != null ? 
                new java.sql.Date(book.getBorrowedDate().getTime()) : null);
            statement.setInt(6, book.getBorrowedDays());
            statement.setInt(7, book.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}