<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BookSquare</title>
    
    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800">

<header class="w-full bg-gradient-to-r from-purple-500 to-purple-900 shadow-md">
    <div class="max-w-6xl mx-auto flex flex-col sm:flex-row items-center justify-between py-4 px-6">
        
        <!-- Logo / Title -->
        <div class="text-center sm:text-left mb-3 sm:mb-0">
            <h1 class="text-2xl font-bold text-white">BookSquare</h1>
        </div>

        <!-- Navbar -->
        <nav>
            <ul class="flex flex-col sm:flex-row gap-3 sm:gap-6 text-center">
                <li>
                    <a href="home.jsp" class="text-white px-4 py-2 rounded hover:bg-white hover:text-blue-600 transition">Home</a>
                </li>
                <li>
                    <a href="addBook.jsp" class="text-white px-4 py-2 rounded hover:bg-white hover:text-blue-600 transition">Add Book</a>
                </li>
                <li>
                    <a href="viewBooks" class="text-white px-4 py-2 rounded hover:bg-white hover:text-blue-600 transition">View Books</a>
                </li>
                <li>
                    <a href="about.jsp" class="text-white px-4 py-2 rounded hover:bg-white hover:text-blue-600 transition">About Us</a>
                </li>
            </ul>
        </nav>
    </div>
</header>

<main class="max-w-6xl mx-auto px-6 py-8">
