package com.library.servlet;

import com.library.dao.BookDAO;
import com.library.model.Book;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editBook")
public class EditBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Book existingBook = bookDAO.selectBook(id);
        request.setAttribute("book", existingBook);
        request.getRequestDispatcher("editBook.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String author = request.getParameter("author");
        String status = request.getParameter("status");
        
        java.util.Date borrowedDate = null;
        int borrowedDays = 0;
        
        if ("Borrowed".equals(status)) {
            try {
                String borrowedDateStr = request.getParameter("borrowed_date");
                if (borrowedDateStr != null && !borrowedDateStr.isEmpty()) {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    borrowedDate = sdf.parse(borrowedDateStr);
                }
                borrowedDays = Integer.parseInt(request.getParameter("borrowed_days"));
            } catch (ParseException | NumberFormatException e) {
                e.printStackTrace();
            }
        }
        
        Book book = new Book(id, name, price, author, status, borrowedDate, borrowedDays);
        
        try {
            bookDAO.updateBook(book);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("viewBooks");
    }
}