<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<div class="container mx-auto px-6 py-6">
  <!-- Page Header -->
  <h2 class="text-4xl font-bold text-gray-800 mb-6 text-center">About Us</h2>

  <!-- Intro Section -->
  <div class="bg-white p-6 rounded-lg shadow-lg mb-8">
    <p class="text-gray-700 text-lg leading-relaxed">
      Welcome to the <span class="font-semibold text-primary">BookSquare a "Library Management System"</span>. Our mission is to provide an efficient and user-friendly platform for managing library resources and facilitating book lending. We strive to help librarians and readers by simplifying the management of library catalogs, borrowing, returns, and status tracking.
    </p>
  </div>

  <!-- Features Section -->
  <h3 class="text-2xl font-semibold text-gray-800 mb-4">Our Features</h3>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
    <div class="bg-gradient-to-r from-blue-100 to-blue-50 p-4 rounded-lg shadow hover:shadow-lg transition">
      <p class="text-gray-800 font-medium">Comprehensive book catalog management</p>
    </div>
    <div class="bg-gradient-to-r from-green-100 to-green-50 p-4 rounded-lg shadow hover:shadow-lg transition">
      <p class="text-gray-800 font-medium">Easy book borrowing and returning process</p>
    </div>
    <div class="bg-gradient-to-r from-yellow-100 to-yellow-50 p-4 rounded-lg shadow hover:shadow-lg transition">
      <p class="text-gray-800 font-medium">Accurate tracking of book availability and borrowing history</p>
    </div>
    <div class="bg-gradient-to-r from-purple-100 to-purple-50 p-4 rounded-lg shadow hover:shadow-lg transition">
      <p class="text-gray-800 font-medium">Secure and reliable system built with Java technologies</p>
    </div>
  </div>

  <!-- Developer Section -->
  <h3 class="text-2xl font-semibold text-gray-800 mb-4">Developer Info</h3>
  <div class="bg-white p-6 rounded-lg shadow-lg mb-8">
    <p class="text-gray-700 text-lg leading-relaxed mb-2">
      This system was developed by <span class="font-semibold text-primary">Subham Sovendu Das</span>, experienced in Java web development using JSP, Servlets, and JDBC. Enthusiastic about building solutions that make everyday tasks easier, the developer designed this system to assist libraries in managing their operations efficiently.
    </p>
    <p class="text-gray-700 text-lg">
      Contact: <a href="mailto:subham@example.com" class="text-secondary hover:underline">subham@gmail.com</a>
    </p>
  </div>
</div>

<%@ include file="footer.jsp" %>
