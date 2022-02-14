# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

1000.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    cuisine: Faker::Restaurant.type,
    description: Faker::Restaurant.description,
  )

  rand(5..10).times do
    restaurant.reviews.create body: Faker::Restaurant.review
  end
end

