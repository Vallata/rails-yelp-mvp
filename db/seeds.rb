# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number:"0665678765"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number:"0678764345"}
tour_dargent = {name: "Tour d'argent", address: "7 rue gaudelet, Paris", category: "french", phone_number:"0655578765"}
toto = {name: "Toto", address: "2 rue poubelle, Anvers E2 7JE", category: "belgian", phone_number:"0335678765"}
mehdi = {name: "Mehdi", address: "16 rue Gaudelet, Paris E2 7JE", category: "japanese", phone_number:"0665600005"}

[dishoom, pizza_east, tour_dargent, toto, mehdi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
