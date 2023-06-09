# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
  Flat.create!(name: Faker::Book.title,
               address: Faker::Address.full_address,
               description: Faker::TvShows::StrangerThings.quote,
               price_per_night: Faker::Number.within(range: 20..100),
               number_of_guests: Faker::Number.within(range: 1..5))
end
