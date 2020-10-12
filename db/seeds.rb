# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

p1 = User.create(first_name: "angelo", last_name: "xenakis", email_address: "angelo@mail.com", password: "pass")

p2 = User.create(first_name: "shivvy", last_name: "dave", email_address: "shiv@mail.com", password: "pass")

c1 = User.create(first_name: "ted", last_name: "neben", email_address: "ted@mail.com", password: "pass", adult: false)
c2 = User.create(first_name: "will", last_name: "reyes", email_address: "will@mail.com", password: "pass", adult: false)

p1.children << c1

p2.children << c2