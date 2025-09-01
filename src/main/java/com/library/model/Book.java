package com.library.model;

import java.util.Date;

public class Book {
    private int id;
    private String name;
    private double price;
    private String author;
    private String status;
    private Date borrowedDate;
    private int borrowedDays;
    
    // Constructors
    public Book() {}
    
    public Book(int id, String name, double price, String author, String status, Date borrowedDate, int borrowedDays) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.author = author;
        this.status = status;
        this.borrowedDate = borrowedDate;
        this.borrowedDays = borrowedDays;
    }
    
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
    
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    
    public Date getBorrowedDate() { return borrowedDate; }
    public void setBorrowedDate(Date borrowedDate) { this.borrowedDate = borrowedDate; }
    
    public int getBorrowedDays() { return borrowedDays; }
    public void setBorrowedDays(int borrowedDays) { this.borrowedDays = borrowedDays; }
}