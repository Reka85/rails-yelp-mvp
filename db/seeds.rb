# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

cat = %w( chinese italian japanese french belgian)

attributes = [
  { name: "Pizza Tower", address: Faker::Address.street_address, category: cat.sample },
  { name: "Propeller", address: Faker::Address.street_address, category: cat.sample },
  { name: "Dokk", address: Faker::Address.street_address, category: cat.sample },
  { name: "Troy", address: Faker::Address.street_address, category: cat.sample },
  { name: "Happy Pizza", address: Faker::Address.street_address, category: cat.sample }
]

attributes.each do |attr|
  r = Restaurant.new(attr)
  r.save
end
