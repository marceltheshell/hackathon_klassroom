require 'ffaker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end


# 4.times do
#   user = User.create(
#     first_name: FFaker::Name::first_name,
#     last_name: FFaker::Name::last_name,
#     email: FFaker::Internet::email,
#     password: "password",
#     age: rand(18..50),
#     gender: FFaker::Gender::random,
#   )

#    random_city = rand(City.count)
#    City.offset(random_city).first.users << user
# end



#   20.times do
#   student = Student.create(
#     first_name: FFaker::Name::first_name,
#     last_name: FFaker::Name::last_name,
#     ethnicity: Faker::Identification::ETHNICITIES,
#     gender: FFaker::Gender::random,
#     klass_id: rand(1..5),
#   )
# end







