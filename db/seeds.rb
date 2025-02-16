# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
restaurants = []
restaurants << Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "020 7420 9324")
puts "Created Dishoom"
restaurants << Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "020 7729 1888")
puts "Created Pizza East"
restaurants << Restaurant.create!(name: "Sushi Samba", address: "110 Bishopsgate, London EC2N 4AY", category: "japanese", phone_number: "020 3640 7330")
puts "Created Sushi Samba"
restaurants << Restaurant.create!(name: "Le Gavroche", address: "43 Upper Brook St, London W1K 7QR", category: "french", phone_number: "020 7408 0881")
puts "Created Le Gavroche"
restaurants << Restaurant.create!(name: "Belgo", address: "50 Earlham St, London WC2H 9LJ", category: "belgian", phone_number: "020 7813 2233")
puts "Created Belgo"

# 3. Create the reviews 🏗
puts  "Crea️ting reviews..."
Review.create!(content: "Great food, great service", rating: 5, restaurant: restaurants[0])
puts "Created review for Dishoom"
Review.create!(content: "The best pizza in town!", rating: 5, restaurant: restaurants[1])
puts "Created review for Pizza East"
Review.create!(content: "Amazing sushi and great views", rating: 5, restaurant: restaurants[2])
puts "Created review for Sushi Samba"
Review.create!(content: "The best French food in London", rating: 5, restaurant: restaurants[3])
puts "Created review for Le Gavroche"
Review.create!(content: "Great mussels and beer!", rating: 5, restaurant: restaurants[4])
puts "Created review for Belgo"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants and #{Review.count} reviews."
