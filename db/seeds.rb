# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing old tux database files"

Tux.destroy_all

puts "Adding some Turbo Tux :)"


Tux.create!(
    price: 190.00,
    description: 'Smokin hot for a smokin hot day',
    name: 'Firey'
)

Tux.create!(
    price: 134.00,
    description: 'Red Tux',
    name: 'Smokin'
)

Tux.create!(
    price: 166.00,
    description: 'Black Tux',
    name: 'Top Gun'
)
