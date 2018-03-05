# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserTask.destroy_all
User.destroy_all
Task.destroy_all
User.create(email: 'claudio@claudio.com', password: '123456', picture: 'https://picsum.photos/286/180/?random')
User.create(email: 'claudio2@claudio2.com', password: '123456', picture: 'https://picsum.photos/286/180/?random')
8.times do
  User.create(email: Faker::Internet.email, password: '123456', picture: 'https://picsum.photos/286/180/?random')
end
9.times do
  Task.create(title: Faker::Pokemon.move, picture: 'https://picsum.photos/286/180/?random')
end
