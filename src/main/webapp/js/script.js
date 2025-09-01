// Function to confirm book deletion
function confirmDelete(bookName) {
    return confirm("Are you sure you want to delete '" + bookName + "'?");
}

// Function to toggle borrow fields based on status
 

// Initialize when page loads
document.addEventListener('DOMContentLoaded', function() {
    // Initialize any status-dependent fields
    if (document.getElementById('status')) {
        toggleBorrowFields();
    }
});