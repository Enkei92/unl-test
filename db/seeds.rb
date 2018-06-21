# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(email: 'admin@example.com', password: '123456', admin: 'true')
usr1 = User.create(email: 'usr1@example.com', password: '123456')
usr2 = User.create(email: 'usr2@example.com', password: '123456')
usr3 = User.create(email: 'usr3@example.com', password: '123456')