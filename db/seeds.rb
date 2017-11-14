# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Instrument.destroy_all
User.destroy_all

print 'Creating 10 fake users...'
10.times do
  print "👶 "
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    # location: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.save!
end
puts " done"

print 'Creating 10 fake instruments...'
10.times do
  print ["🥁 " ,"🎷 ", "🎺 ", "🎹 ", "🎸 ", "🎻 "].sample
  instrument = Instrument.new(
    name: Faker::Music.instrument,
    description: Faker::Lorem.sentence,
    category: Faker::Lorem.word,
    hourly_price: Faker::Number.decimal(2),
    user: User.order("RANDOM()").first
  )
  instrument.save!
end
puts " done"


print 'Creating 10 fake bookings...'
10.times do
  print "📅 "
  booking = Booking.new(
    review: Faker::Lorem.sentences,
    rating: Faker::Number.between(1, 5),
    user: User.order("RANDOM()").first,
    instrument: Instrument.order("RANDOM()").first
  )

  booking.save!
end

puts " done"

puts 'Finished!'
