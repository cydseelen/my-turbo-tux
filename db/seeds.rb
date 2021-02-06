# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
file1 = URI.open("https://res.cloudinary.com/cydseelen/image/upload/v1612617441/h1438v7s71xkt3bn09pimtwkkh1u.jpg")


puts "Removing old tux and users and Bookings database files"

Tux.destroy_all
User.destroy_all
Booking.destroy_all


puts "Adding some Turbo Tuxes :)"



puts "Creating a user :)"

User.create!(
    email: "cydnie@mail.com",
    password: "123456",
  )
  
puts "Adding some Turbo Tuxes :)"

Tux.create!(
    user_id: 1,
    user: User.first,
    price: 190.00,
    name: 'Firey',
    description: "Shawls aren't just for little old ladies. This shawl collar tux feels both fresh and classic perfect for when you want to stand out a little.",
    # tux.photo.attach(io:file1, filename:'logo.jpg', content_type: 'image/jpg')
)

Tux.create!(
    user_id: 1,

    user: User.first,

    price: 134.00,
    name: "Smokin'",
    description: "This is it: the notch lapel tuxedo you've been looking for. A modern take on the iconic tux, it looks great paired with a classic black bow tie or worn with something more unique. Do you."
)

Tux.create!(
    user_id: 1,

    user: User.first,

    price: 166.00,
    name: 'Top Gun',
    description: "This is peak formalwear style, literally. It's tough to beat the classic yet statement-making look of a peak lapel tuxedo plus, the upward-pointing lapels frame your face and elongate your frame. Win, win."
)
