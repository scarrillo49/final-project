# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Transaction.create([
    { date: "2022-04-25", amount: 520.00, category: "Groceries" },
    { date: "2022-04-24", amount: 70.00, category: "Gas" },
    { date: "2022-04-20", amount: 100.00, category: "Utilities" },
    { date: "2022-04-23", amount: 50.00, category: "Entertainment" },
    { date: "2022-04-22", amount: 100.00, category: "Savings" },
])