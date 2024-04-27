$(document).ready(function() {
    // Sample transactions
    var transactions = [
        { date: "2024-04-25", amount: 520.00, category: "Groceries" },
        { date: "2024-04-24", amount: 70.00, category: "Gas" },
        { date: "2024-04-20", amount: 100.00, category: "Utilities" },
        { date: "2024-04-23", amount: 50.00, category: "Entertainment" },
        { date: "2024-04-22", amount: 100.00, category: "Savings" }
    ];

    // Update the transaction list with the given transactions
    function updateTransactionList(filteredTransactions) {
        // Clear the table
        var tbody = $("#transactions_tbody");
        tbody.empty();
        // Add each transaction to the table
        filteredTransactions.forEach(function(transaction) {
            var row = $("<tr>");
            row.append($("<td>").text(transaction.date));
            row.append($("<td>").text('$' + transaction.amount.toFixed(2)));
            row.append($("<td>").text(transaction.category));
            tbody.append(row);
        });
    }

    // Handle the search button click event
    $("#search_button").click(function() {
        // Get the keyword from the search input
        var keyword = $("#search_keyword").val().toLowerCase().replace('$', '');
        // Filter the transactions based on the keyword (must be exact)
        var filteredTransactions = transactions.filter(function(transaction) {
            return transaction.date.toLowerCase() === keyword ||
                transaction.amount.toFixed(2) === keyword ||
                transaction.category.toLowerCase() === keyword;
        });
        updateTransactionList(filteredTransactions);
    });

    updateTransactionList(transactions);
});
