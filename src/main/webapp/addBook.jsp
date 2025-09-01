<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<div class="container mx-auto px-6 padding-top: 0rem;
    padding-bottom: 3rem max-w-lg">
 

  <form action="addBook" method="post" class="bg-white p-6 rounded-lg shadow-lg space-y-4">
   <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Add New Book</h2>
 
     <div class="flex flex-col">
      <label for="name" class="font-semibold text-gray-700 mb-1">Book Name:</label>
      <input type="text" id="name" name="name" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

     <div class="flex flex-col">
      <label for="price" class="font-semibold text-gray-700 mb-1">Price:</label>
      <input type="number" id="price" name="price" step="0.01" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

     <div class="flex flex-col">
      <label for="author" class="font-semibold text-gray-700 mb-1">Author:</label>
      <input type="text" id="author" name="author" required
             class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
    </div>

     <div class="flex flex-col">
      <label for="status" class="font-semibold text-gray-700 mb-1">Status:</label>
      <select id="status" name="status" onchange="toggleBorrowFields()"
              class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
        <option value="Available">Available</option>
        <option value="Borrowed">Borrowed</option>
      </select>
    </div>

     <div id="borrowFields" class="space-y-4 mt-2 hidden">
      <div class="flex flex-col">
        <label for="borrowed_date" class="font-semibold text-gray-700 mb-1">Borrowed Date:</label>
        <input type="date" id="borrowed_date" name="borrowed_date"
               class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
      </div>
      <div class="flex flex-col">
        <label for="borrowed_days" class="font-semibold text-gray-700 mb-1">Borrowed Days:</label>
        <input type="number" id="borrowed_days" name="borrowed_days" min="1"
               class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary transition">
      </div>
    </div>

    <!-- Submit Button -->
    <div>
   <button type="submit"
    class="w-full px-6 py-2 bg-gradient-to-r from-blue-500 to-purple-500 text-white font-semibold rounded-lg shadow-lg hover:scale-105 hover:shadow-xl transition transform duration-300">
    Add Book
</button>
    </div>
  </form>
</div>

<script>
  function toggleBorrowFields() {
    var status = document.getElementById("status").value;
    var borrowFields = document.getElementById("borrowFields");
    if (status === "Borrowed") {
      borrowFields.classList.remove("hidden");
    } else {
      borrowFields.classList.add("hidden");
    }
  }
</script>

<%@ include file="footer.jsp" %>
