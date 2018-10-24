# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
file = File.read('schedule.json')
data = JSON.parse(file)

puts "After seeding the database"
puts " - There are #{Match.count} matches."
puts " - There are #{Season.count} seasons."
puts " - There are #{Team.count} teams."