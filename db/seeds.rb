# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Booking.destroy_all
Instrument.destroy_all
User.destroy_all

print 'Creating 3 users...'
User.create(
  first_name: "Samia",
  last_name: "Dahmouni",
  phone_number: "00 00 00 00 00",
  email: "samia@gmail.com",
  password: "samiad"
  )
print "👶 "
User.create(
  first_name: "Valentin",
  last_name: "Ferron",
  phone_number: "11 11 11 11 11",
  email: "valentin@gmail.com",
  password: "valentin"
  )
print "👶 "
User.create(
  first_name: "Hugues",
  last_name: "Tonnet",
  phone_number: "22 22 22 22 22",
  email: "hugues@gmail.com",
  password: "hugues"
  )
print "👶 "

print 'Creating 11 instruments...'
Instrument.create(
  name: "Guitare",
  description: Faker::Lorem.sentence,
  category: "Wind",
  daily_price: 100,
  user_id: 1,
  address: "130 Cours Balguerie Stuttenberg, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/guitare_jadclg.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Guitare Electrique",
  description: Faker::Lorem.sentence,
  category: "String",
  daily_price: 150,
  user_id: 1,
  address: "127 cours du Médoc, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927432/guitare-electrique_itwewx.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Violon",
  description: Faker::Lorem.sentence,
  category: "String",
  daily_price: 200,
  user_id: 1,
  address: "1 impasse Pierre Paul Courau, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927432/violon_emj1sd.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Trompette",
  description: Faker::Lorem.sentence,
  category: "Wind",
  daily_price: 140,
  user_id: 1,
  address: "26 rue de Leybardie, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927432/trompette_ho88ig.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Batterie",
  description: Faker::Lorem.sentence,
  category: "Percussion",
  daily_price: 300,
  user_id: 2,
  address: "31 allée Haussmann, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/batterie_azspkn.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Basse",
  description: Faker::Lorem.sentence,
  category: "String",
  daily_price: 220,
  user_id: 2,
  address: "4 quai de Bacalan, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/basse_ynwlkw.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Saxophone",
  description: Faker::Lorem.sentence,
  category: "Wind",
  daily_price: 350,
  user_id: 2,
  address: "135 cours Edouard Vaillant, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927432/saxophone_mm6qyn.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Clarinette",
  description: Faker::Lorem.sentence,
  category: "Wind",
  daily_price: 120,
  user_id: 2,
  address: "66 cours Louis Fargue, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/clarinette_uk2te6.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Contre basse",
  description: Faker::Lorem.sentence,
  category: "String",
  daily_price: 300,
  user_id: 3,
  address: "240 rue du Jardin Public, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/contre-basse_hfgbsy.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Maracass",
  description: Faker::Lorem.sentence,
  category: "Percussion",
  daily_price: 60,
  user_id: 3,
  address: "2 rue André Bac, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927432/maracass_ot8az1.jpg"
  )
print "🎸 "
Instrument.create(
  name: "Flûte",
  description: Faker::Lorem.sentence,
  category: "Wind",
  daily_price: 10,
  user_id: 3,
  address: "29 rue Premeynard, 33300 Bordeaux",
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1510927431/flute_s0hjmk.jpg"
  )
print "🎸 "

print 'Creating 5 bookings...'
Booking.create(
  review: "Super instrument",
  rating: 5,
  user_id: 1,
  instrument_id: 5,
  date_start: "05/03/2017",
  date_end: "15/03/2017"
  )
print "📅 "
Booking.create(
  review: "Très déçue, mauvais état !",
  rating: 1,
  user_id: 1,
  instrument_id: 9,
  date_start: "03/05/2017",
  date_end: "10/05/2017"
  )
print "📅 "
Booking.create(
  review: "Je le reloue dès que possible",
  rating: 4,
  user_id: 2,
  instrument_id: 1,
  date_start: "03/05/2017",
  date_end: "10/05/2017"
  )
print "📅 "
Booking.create(
  review: "Neutre",
  rating: 3,
  user_id: 3,
  instrument_id: 2,
  date_start: "05/03/2017",
  date_end: "15/03/2017"
  )
print "📅 "
Booking.create(
  review: "Bof",
  rating: 2,
  user_id: 2,
  instrument_id: 3,
  date_start: "10/06/2017",
  date_end: "12/06/2017"
  )
print "📅 "

puts 'Finished!'
