# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "ejemplo1@mail.com", password: "1234")
user2 = User.create(email: "ejemplo2@mail.com", password: "1234")
user3 = User.create(email: "ejemplo3@mail.com", password: "1234")
user4 = User.create(email: "ejemplo4@mail.com", password: "1234")
user5 = User.create(email: "ejemplo5@mail.com", password: "1234")

property1 = Property.create(user_id: 1, city:"Medellin", hood:"Belen", built_type:"Casa")
property1 = Property.create(user_id: 2, city:"Medellin", hood:"Poblado", built_type:"Apartamento")
property1 = Property.create(user_id: 3, city:"Medellin", hood:"Laureles", built_type:"Casa")
property1 = Property.create(user_id: 4, city:"Medellin", hood:"La America", built_type:"Apartamento")
property1 = Property.create(user_id: 5, city:"Medellin", hood:"Belen", built_type:"Casa")

