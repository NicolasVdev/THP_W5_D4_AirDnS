# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

15.times do
  City.create!(city_name: Faker::Address.city)
end

50.times do
  Dog.create!(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, city_id: rand(1..15))
end

40.times do
  Dogsitter.create!(name: Faker::FunnyName.name, city_id: rand(1..15))
end

60.times do
  Stroll.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1, format: :default), city_id: rand(1..15), dog_id: rand(1..50), dogsitter_id: rand(1..40))
end