# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "starting seeding"

WooblySnack.destroy_all
Woobly.destroy_all
Snack.destroy_all
User.destroy_all

puts "removing previous data"

puts "creating seed"

pablo = User.create(name: "Pablo", username: "Pablo123", email: "pablo@gmail.com", password: "123")
raisin= User.create(name: "Raisin", username: "Raisin123", email: "raisin@gmail.com", password: "123")
mash = User.create(name: "Mash", username: "Mash123", email: "mash@gmail.com", password: "123")

ice_cream = Snack.create(name: "ice cream")
chips = Snack.create(name: "chips")
pineapple = Snack.create(name: "pineapple")

wooblu = Woobly.create(name: "Woobly", user_id: pablo.id)
joobly = Woobly.create(name: "Joobly", user_id: pablo.id)
woobly = Woobly.create(name: "Woobly", user_id: mash.id)

WooblySnack.create(price: 5.55, woobly_id: woobly.id, snack_id: ice_cream.id)
WooblySnack.create(price: 5.55, woobly_id: woobly.id, snack_id: chips.id)
WooblySnack.create(price: 4.00, woobly_id: joobly.id, snack_id: ice_cream.id)




puts "done seeding"