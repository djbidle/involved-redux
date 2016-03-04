# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "INvolved User",
             email: "user@involved.gov",
             password:              "beheard",
             password_confirmation: "beheard",
             address: "555 Involved Ln.",
             city: "MyCity", 
             state: "IN", 
             zip: "45851")

99.times do |n|
  name  = Faker::Name.name
  email = "user#{n+1}@involved.gov"
  password = "password"
  address = "1#{n+2}#{n+1}6 Involved Street"
  city = "MyCity"
  state = "IN"
  zip = "4585#{n+1}"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               address: address, 
               city: city, 
               state: state,
               zip: zip)
end