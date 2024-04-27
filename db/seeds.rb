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
    { date: "2024-04-25", amount: 520.00, category: "Groceries" },
    { date: "2024-04-24", amount: 70.00, category: "Gas" },
    { date: "2024-04-20", amount: 100.00, category: "Utilities" },
    { date: "2024-04-23", amount: 50.00, category: "Entertainment" },
    { date: "2024-04-22", amount: 100.00, category: "Savings" },
])

Dog.create([
    { name: "Gohan", breed: "Shiba Inu", birth_date: "2022-03-25", weight: 21.0 },
    { name: "Princess", breed: "Beagle", birth_date: "2018-03-15", weight: 30.0 },
    { name: "Spot", breed: "Dalmatian", birth_date: "2017-05-20", weight: 55.0 },
    { name: "Malachi", breed: "Great Dane", birth_date: "2016-07-10", weight: 80.0 },
    { name: "Max", breed: "French Bulldog", birth_date: "2015-09-05", weight: 25.0 },
])