# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Adding some Turbo Tux :)"

Tux.create!(
    price: 190.00,
    description: 'firey',   
)

Tux.create!(
    price: 134.00,
    description: 'smokin',   
)

Tux.create!(
    price: 166.00,
    description: 'top gun',   
)
