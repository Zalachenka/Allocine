require 'faker'
Movie.destroy_all
100.times do
  film = Movie.create!(name: Faker::Movie.quote, year: Faker::Number.between(1900, 2020), genre: ["action", "horreur", "comédie", "drame"].sample, 
  	synopsis: Faker::ChuckNorris.fact, director: Faker::Name.unique.name, allocine_rating: rand(0..5).to_f, already_seen: "false", my_rating: "nil" )
end
puts "100 fake movies created"# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
