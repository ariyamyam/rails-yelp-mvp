# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
goldmarie = { name: "Goldmarie", address: "Schmellerstrasse, Munich", phone_number: "123 2233", category: "french" }
anna = { name: "Anna", address: "Daiserstrasse, Munich", phone_number: "123 4455", category: "italian" }
pommes = { name: "Bruxelles", address: "Place du Gourmet, Gent", phone_number: "123 2233", category: "belgian" }
peking = { name: "Peking", address: "Rothembaum, Hamburg", phone_number: "123 2233", category: "chinese" }
suzuki = { name: "Best Sushi", address: "Pohlstrasse, Berlin", phone_number: "123 2233", category: "japanese" }

[goldmarie, anna, pommes, peking, suzuki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
