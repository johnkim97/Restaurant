# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all

i1 = Item.create({:name => "Cheeseburger", :restaurant => "Five Guys"})
i2 = Item.create({ :name => "Pizza", :restaurant => "Dominoes"})
i3 = Item.create({ :name => "Hot Wings", :restaurant => "Buffalo Wild Wings"})
i4 = Item.create({ :name => "BaconBurger", :restaurant => "Five Guys"})
puts "There are now #{Item.count} rows in the items table."

User.destroy_all

u1 = User.create({:name => "John", :email => "johnj.k97@gmail.com"}) 
u2 = User.create({ :name => "Roberto", :email => "r@r.com"})
u3 = User.create({ :name => "Akaash", :email => "a@a.com"})

puts "There are now #{User.count} rows in the users table."

