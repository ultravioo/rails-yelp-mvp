# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
tour = { name: "La Tour d'Argent", address: '19 Quai de la Tournelle', category: 'french', phone_number: '+3333333333' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
zen_bamboo = { name: 'Zen Bamboo', address: 'C Dr.Esquerdo 70', category: 'chinese', phone_number: '+33335463833' }
sushi_yakuza = { name: 'Sushi Yakuza', address: 'Calle de Naravez, 26', category: 'japanese', phone_number: '+4434383' }
frite_belge = { name: 'La Frite Belge', address: 'Rue de Bruxelles', category: 'belgian', phone_number: '+5612345233' }

[tour, pizza_east, zen_bamboo, sushi_yakuza, frite_belge].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
