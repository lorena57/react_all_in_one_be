# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lorena = User.create(username: 'Lorena57')

entry = Note.create(Comments: "Testing out this bad boy", User_id: lorena.id)

shopping = Grocery.create(item: "Oranges", qty: 5, user_id: lorena.id)

digits = Contact.create(first_name: "Amy", last_name: "Winehouse", phone_number: 818-911-0411, email: 'amy@amy.com', user_id: lorena.id)