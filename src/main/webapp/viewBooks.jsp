<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="header.jsp"%>

<div class="max-w-6xl mx-auto px-6 padding-top: 0rem;
    padding-bottom: 3rem">
    <h2 class="text-3xl font-bold text-gray-800 mb-6 text-center">Library Books</h2>

    <div class="overflow-x-auto rounded-lg shadow-lg">
        <table class="min-w-full bg-white divide-y divide-gray-200">
            <thead class="bg-gradient-to-r from-purple-500 to-purple-900 text-white">
                <tr>
                    <th class="py-3 px-4 text-left">ID</th>
                    <th class="py-3 px-4 text-left">Name</th>
                    <th class="py-3 px-4 text-left">Price</th>
                    <th class="py-3 px-4 text-left">Author</th>
                    <th class="py-3 px-4 text-left">Status</th>
                    <th class="py-3 px-4 text-left">Borrowed Date</th>
                    <th class="py-3 px-4 text-left">Borrowed Days</th>
                    <th class="py-3 px-4 text-left">Actions</th>
                </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
                <%
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.List<com.library.model.Book> bookList = (java.util.List<com.library.model.Book>) request.getAttribute("bookList");
                if (bookList != null) {
                    for (com.library.model.Book book : bookList) {
                %>
                <tr class="hover:bg-gray-50 transition">
                    <td class="py-2 px-4"><%= book.getId() %></td>
                    <td class="py-2 px-4"><%= book.getName() %></td>
                    <td class="py-2 px-4">₹ <%= String.format("%.2f", book.getPrice()) %></td>
                    <td class="py-2 px-4"><%= book.getAuthor() %></td>
                    <td class="py-2 px-4"><%= book.getStatus() %></td>
                    <td class="py-2 px-4"><%= book.getBorrowedDate() != null ? sdf.format(book.getBorrowedDate()) : "N/A" %></td>
                    <td class="py-2 px-4"><%= book.getBorrowedDays() > 0 ? book.getBorrowedDays() : "N/A" %></td>
                    <td class="py-2 px-4">
                        <div class="flex flex-wrap gap-2">
                            <!-- Edit Button-->
                            <a href="editBook?id=<%= book.getId() %>"
                               class="flex-1 px-4 py-2 text-white font-semibold rounded-lg shadow-lg 
                                      bg-gradient-to-r from-blue-500 to-purple-600 
                                      hover:from-blue-600 hover:to-purple-700 
                                      transition transform hover:scale-105 text-center">
                                Edit
                            </a>

                            <!-- Delete Button-->
                            <a href="deleteBook?id=<%= book.getId() %>"
                               onclick="return confirm('Are you sure you want to delete this book?')"
                               class="flex-1 px-4 py-2 text-white font-semibold rounded-lg shadow-lg 
                                      bg-gradient-to-r from-red-600 to-red-300 
                                      hover:from-red-600 hover:to-orange-600 
                                      transition transform hover:scale-105 text-center">
                                Delete
                            </a>
                        </div>
                    </td>
                </tr>
                <%
                    }
                }
                %>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="footer.jsp"%>
