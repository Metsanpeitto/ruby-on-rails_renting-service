# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'administrator', email: 'as@as.com', password: '123456', password_confirmation: '123456',
                   role: 'admin')

Item.create([{ name: 'Big boat', description: 'It is amazing', image: 'https://i.imgur.com/SZJIKne.png', price: 300, color: 'blue', user_id: user.id },
             { name: 'Medium boat', description: 'It is less amazing', image: 'https://i.imgur.com/ZneOae2.png', price: 150, color: 'red',
               user_id: user.id },
             { name: 'Small boat', description: 'It is small, but amazing', image: 'https://i.imgur.com/RdEZTBM.png', price: 100,
               color: 'green', user_id: user.id }])
