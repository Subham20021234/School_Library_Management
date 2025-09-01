<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>

<div class="container mx-auto px-6 padding-top: 0rem;
    padding-bottom: 3rem max-w-lg">
  

  <form action="editBook" method="post" class="bg-white p-6 rounded-lg shadow-lg space-y-4">
  <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Edit Book</h2>
    <input type="hidden" name="id" value="${book.id}">

    <!-- Book Name -->
    <div class="flex flex-col">
      <label for="name" class="font-semibold text-gray-700 mb-1">Book Name:</label>
      <input type="text" id="name" name="name" value="${book.name}" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

    <!-- Price -->
    <div class="flex flex-col">
      <label for="price" class="font-semibold text-gray-700 mb-1">Price:</label>
      <input type="number" id="price" name="price" step="0.01" value="${book.price}" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

    <!-- Author -->
    <div class="flex flex-col">
      <label for="author" class="font-semibold text-gray-700 mb-1">Author:</label>
      <input type="text" id="author" name="author" value="${book.author}" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

    <!-- Status -->
    <div class="flex flex-col">
      <label for="status" class="font-semibold text-gray-700 mb-1">Status:</label>
      <select id="status" name="status" onchange="toggleBorrowFields()"
              class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
        <option value="Available" ${book.status == 'Available' ? 'selected' : ''}>Available</option>
        <option value="Borrowed" ${book.status == 'Borrowed' ? 'selected' : ''}>Borrowed</option>
      </select>
    </div>

    <!-- Borrow Fields -->
    <div id="borrowFields" class="space-y-4 mt-2 ${book.status == 'Borrowed' ? '' : 'hidden'}">
      <div class="flex flex-col">
        <label for="borrowed_date" class="font-semibold text-gray-700 mb-1">Borrowed Date:</label>
        <input type="date" id="borrowed_date" name="borrowed_date" 
               value="<fmt:formatDate value='${book.borrowedDate}' pattern='yyyy-MM-dd' />"
               class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
      </div>
      <div class="flex flex-col">
        <label for="borrowed_days" class="font-semibold text-gray-700 mb-1">Borrowed Days:</label>
        <input type="number" id="borrowed_days" name="borrowed_days" value="${book.borrowedDays}" min="1"
               class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
      </div>
    </div>

    <!-- Submit Button -->
    <div>
        <button type="submit"
    class="w-full px-6 py-2 bg-gradient-to-r from-blue-500 to-purple-500 text-white font-semibold rounded-lg shadow-lg hover:scale-105 hover:shadow-xl transition transform duration-300">
    Update Book
</button>
    </div>
  </form>
</div>

<script>
  function toggleBorrowFields() {
    const status = document.getElementById("status").value;
    const borrowFields = document.getElementById("borrowFields");
    if (status === "Borrowed") {
      borrowFields.classList.remove("hidden");
    } else {
      borrowFields.classList.add("hidden");
    }
  }
</script>

<%@ include file="footer.jsp" %>
