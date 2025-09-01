<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>BookSquare</title>
    

    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />

     <script src="https://unpkg.com/feather-icons"></script>
</head>
<body class="bg-gray-50">

<!-- Navbar -->
<nav class="bg-white border-b border-gray-200 sticky top-0 z-50 shadow-sm" style="transition: top 0.3s;">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
            <!-- Logo -->
            <div class="flex items-center space-x-2">
                <div class="w-8 h-8 bg-gradient-to-r from-blue-500 to-green-500 rounded-lg flex items-center justify-center">
                    <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.746 0 3.332.477 4.5 1.253v13C19.832 18.477 18.246 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"></path>
                    </svg>
                </div>
                <span class="text-xl font-bold text-gray-800">Book<span class="text-xl font-bold text-blue-600">Square</span></span>
            </div>

             <div class="hidden md:flex items-center space-x-8">
                <a href="addBook.jsp" class="flex items-center text-gray-900 hover:text-blue-600 transition-all duration-300">Add Books</a>
                <a href="viewBooks" class="flex items-center text-gray-900 hover:text-blue-600 transition-all duration-300">View Books</a>
                 <a href="about.jsp" class="flex items-center text-gray-900 hover:text-blue-600 transition-all duration-300">About Us</a>
            </div>

             <div class="hidden md:flex items-center space-x-4">
                 <a href="viewBooks" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg font-medium shadow-md hover:shadow-lg transition-all duration-300">View Books</a>
            </div>

             <button onclick="toggleMobileMenu()" class="md:hidden p-2 rounded-lg hover:bg-gray-100 transition-colors duration-300">
                <svg id="menu-icon" class="w-6 h-6 text-gray-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                </svg>
                <svg id="close-icon" class="w-6 h-6 text-gray-700 hidden" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
            </button>
        </div>

         <div id="mobile-menu" class="md:hidden hidden">
            <div class="px-2 pt-2 pb-3 space-y-1 bg-white border border-gray-200 rounded-lg mt-2 shadow-lg">
                <a href="addBook.jsp" class="block px-3 py-2 rounded-lg text-gray-600 hover:text-blue-600 hover:bg-gray-50">Add Books</a>
                <a href="viewBooks" class="block px-3 py-2 rounded-lg text-gray-600 hover:text-blue-600 hover:bg-gray-50">View Books</a>
                <a href="about.jsp" class="block px-3 py-2 rounded-lg text-gray-600 hover:text-blue-600 hover:bg-gray-50">About Us</a>
                
            </div>
        </div>
    </div>
</nav>

<!-- Features Section -->
<section class="py-17 bg-gray-100">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <!-- Header -->
 <div class="text-center mb-10 pt-12">
        <h2 class="text-3xl sm:text-4xl font-bold text-gray-900 mb-4">
            Everything You Need to Manage Your Library
        </h2>

         <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            <span id="rotating-text" class="font-semibold text-blue-600"></span>
        </p>
    </div>

    <!-- Rotating text script -->
    <script>
    const phrases = [
    	"Explore Books, Manage Members, Track Issued Books",
        "Easy Issue & Return with Due Date Tracking",
        "Notifications for Overdue Books",
        "Secure Access for Admin, Librarian & Members"
    ];

        let currentPhrase = 0;
        const rotatingText = document.getElementById("rotating-text");

        function changeText() {
            rotatingText.classList.add("opacity-0", "transition", "duration-500");
            setTimeout(() => {
                rotatingText.textContent = phrases[currentPhrase];
                rotatingText.classList.remove("opacity-0");
                currentPhrase = (currentPhrase + 1) % phrases.length;
            }, 500); // wait for fade out before changing
        }

         rotatingText.textContent = phrases[0];
        currentPhrase = 1;

         setInterval(changeText, 2500);
    </script>

    <!-- Features Grid -->
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mb-12">
       <div
        class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-blue-400 transition-all duration-300 hover:scale-105 hover:shadow-blue-200"
      >
        <div class="flex items-center space-x-3 mb-4">
          <div class="p-3 rounded-lg bg-blue-50">
            <i data-feather="plus-circle" class="w-6 h-6 text-blue-600"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-900">
            Add Books
          </h3>
        </div>
        <p class="text-gray-600">
          Add new books to the library collection with details like name, price, author, and status.
        </p>
      </div>

       <div
        class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-purple-400 transition-all duration-300 hover:scale-105 hover:shadow-purple-200"
      >
        <div class="flex items-center space-x-3 mb-4">
          <div class="p-3 rounded-lg bg-purple-50">
            <i data-feather="book" class="w-6 h-6 text-purple-600"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-900">
            View Books
          </h3>
        </div>
        <p class="text-gray-600">
          View all books in the library, including their current status and borrowing information.
        </p>
      </div>

       <div
        class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-green-400 transition-all duration-300 hover:scale-105 hover:shadow-green-200"
      >
        <div class="flex items-center space-x-3 mb-4">
          <div class="p-3 rounded-lg bg-green-50">
            <i data-feather="edit" class="w-6 h-6 text-green-600"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-900">
            Update Books
          </h3>
        </div>
        <p class="text-gray-600">
          Edit book details and update their status as needed.
        </p>
      </div>

       <div
        class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-indigo-400 transition-all duration-300 hover:scale-105 hover:shadow-indigo-200"
      >
        <div class="flex items-center space-x-3 mb-4">
          <div class="p-3 rounded-lg bg-indigo-50">
            <i data-feather="trash-2" class="w-6 h-6 text-indigo-600"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-900">
            Delete Books
          </h3>
        </div>
        <p class="text-gray-600">
          Remove books from the library collection when necessary.
        </p>
      </div>

    <style>
.tooltip {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 100px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px;
  position: absolute;
  z-index: 1;
  bottom: 110%; /* position above */
  left: 50%;
  margin-left: -50px;
  opacity: 0;
  transition: opacity 0.3s;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}
</style>

<div class="tooltip">
  <div
    class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-red-400 transition-all duration-300 hover:scale-105 hover:shadow-red-200"
  >
    <div class="flex items-center space-x-3 mb-4">
      <div class="p-3 rounded-lg bg-red-50">
        <i data-feather="shield" class="w-6 h-6 text-red-600"></i>
      </div>
      <h3 class="text-xl font-semibold text-gray-900">
        Secure Access
      </h3>
    </div>
    <p class="text-gray-600">
      Role-based access control ensuring data privacy and security for all stakeholders.
    </p>
  </div>
  <span class="tooltiptext">Coming Soon</span>
</div>


       <div
        class="bg-white border border-gray-200 rounded-xl p-6 shadow-sm hover:shadow-2xl hover:border-yellow-400 transition-all duration-300 hover:scale-105 hover:shadow-yellow-200"
      >
        <div class="flex items-center space-x-3 mb-4">
          <div class="p-3 rounded-lg bg-yellow-50">
            <i data-feather="clock" class="w-6 h-6 text-yellow-600"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-900">
            Real-time Updates
          </h3>
        </div>
        <p class="text-gray-600">
          Real-time notifications keep members updated.
        </p>
      </div>
    </div>
  </div>
</section>

<!-- Benefits Section -->
<div class="bg-white rounded-2xl p-10 shadow-lg border border-gray-200 max-w-7xl mx-auto mt-10">
    <div class="text-center mb-12">
        <h3 class="text-2xl sm:text-3xl font-bold text-gray-900 mb-4">Why Choose BookSquare?</h3>
        <p class="text-gray-600">Trusted by educational institutions worldwide</p>
    </div>
    <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-6">
        <div class="flex items-center space-x-3 hover:bg-gray-50 p-4 rounded-lg transition-all">
            <i data-feather="book-open" class="w-10 h-10 text-green-600"></i>
            <span class="text-sm font-medium text-gray-800">Simplifies book cataloging and reduces paperwork.</span>
        </div>
        <div class="flex items-center space-x-3 hover:bg-gray-50 p-4 rounded-lg transition-all">
            <i data-feather="shield" class="w-10 h-10 text-blue-600"></i>
            <span class="text-sm font-medium text-gray-800">Secure authentication ensures data protection.</span>
        </div>
        <div class="flex items-center space-x-3 hover:bg-gray-50 p-4 rounded-lg transition-all">
            <i data-feather="activity" class="w-10 h-10 text-indigo-600"></i>
            <span class="text-sm font-medium text-gray-800">Tracks all library activities in one place.</span>
        </div>
        <div class="flex items-center space-x-3 hover:bg-gray-50 p-4 rounded-lg transition-all">
            <i data-feather="bell" class="w-10 h-10 text-red-600"></i>
            <span class="text-sm font-medium text-gray-800">Real-time notifications keep members updated.</span>
        </div>
    </div>
</div>

<footer class="w-full bg-gradient-to-r from-slate-200 to-gray-50 py-4 px-6 mt-6">
    <div class="max-w-6xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-4">
        
         <div class="text-center sm:text-left">
            <h1 class="font-bold tracking-wide text-lg">
                <span class="text-xl font-bold text-gray-800">Book<span class="text-xl font-bold text-blue-600">Square</span></span>
            </h1>
            <p class="text-slate-400 text-sm">Everything You Need to Manage Your Library</p>
        </div>

         <div class="flex gap-4">
            <!-- GitHub -->
            <a href="https://github.com/Subham20021234" target="_blank" class="text-slate-600 hover:text-blue-500 text-xl" aria-label="GitHub">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 2C7.03 2 3 6.03 3 11c0 3.87 2.42 7.14 5.8 8.31.42.08.57-.18.57-.4 0-.19-.01-.82-.01-1.49-2.1.34-2.54-.51-2.7-.98-.09-.23-.48-.98-.82-1.18-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.86 2.33.66.07-.52.28-.85.51-1.05-1.77-.2-3.64-.88-3.64-3.89 0-.86.3-1.56.82-2.12-.08-.2-.36-1.02.08-2.12 0 0 .67-.22 2.2.82.64-.18 1.33-.27 2.03-.27s1.39.09 2.03.27c1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.52.56.82 1.26.82 2.12 0 3.01-1.87 3.69-3.65 3.89.29.24.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .22.15.48.58.39C18.58 18.13 21 14.86 21 11c0-4.97-4.03-9-9-9z" />
                </svg>
            </a>

             <a href="https://www.linkedin.com/in/subham-sovendu-das-905275340" target="_blank" class="text-slate-600 hover:text-blue-600 text-xl" aria-label="LinkedIn">
                <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24" class="w-6 h-6">
                    <path d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-4 0v7h-4v-7a6 6 0 016-6z"/>
                    <rect width="4" height="12" x="2" y="9" fill="currentColor"/>
                    <circle cx="4" cy="4" r="2" fill="currentColor"/>
                </svg>
            </a>

             <a href="https://www.instagram.com/" target="_blank" class="text-slate-600 hover:text-pink-500 text-xl" aria-label="Instagram">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" class="w-6 h-6">
                    <rect x="2" y="2" width="20" height="20" rx="5" ry="5" />
                    <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37z" />
                    <line x1="17.5" y1="6.5" x2="17.51" y2="6.5" />
                </svg>
            </a>
        </div>

       
        <p class="text-slate-400 text-xs text-center sm:text-right">
            © <%= java.time.Year.now() %> Built by <b>Subham Sovendu Das</b> · Engineers Minds, Bengaluru
        </p>
    </div>
</footer>

<script>
function toggleMobileMenu() {
    const mobileMenu = document.getElementById('mobile-menu');
    const menuIcon = document.getElementById('menu-icon');
    const closeIcon = document.getElementById('close-icon');
    mobileMenu.classList.toggle('hidden');
    menuIcon.classList.toggle('hidden');
    closeIcon.classList.toggle('hidden');
}

// Navbar show/hide
let lastScrollTop = 0;
const navbar = document.querySelector('nav');
window.addEventListener('scroll', () => {
    let st = window.pageYOffset || document.documentElement.scrollTop;
    if (st > lastScrollTop) {
        // Scroll down 
        navbar.style.top = '-80px'; // Adjust to navbar height
    } else {
        
        navbar.style.top = '0';
    }
    lastScrollTop = st <= 0 ? 0 : st;
});

feather.replace();
</script>

</body>
</html>
