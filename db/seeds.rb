# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Course.destroy_all
2.times do
  course = Course.create!(title: Faker::Simpsons.location)
end
10.times do
  user = User.create!(name: Faker::Simpsons.character, course_id: Course.order("RANDOM()").first.id)
end
