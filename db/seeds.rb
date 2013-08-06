# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

item_hashes = [
	{ :name => "Cheeseburger", :restaurant => "Five Guys"},
	{ :name => "Pizza", :restaurant => "Dominoes"},
	{ :name => "Hot Wings", :restaurant => "Buffalo Wild Wings"},
	{ :name => "BaconBurger", :restaurant => "Five Guys"}
]

Item.destroy_all 
item_hashes.each do |i_hash|
	i = Item.new
	i.name = i_hash[:name]
	i.restaurant = i_hash[:restaurant]
	i.save
end 
puts "There are now #{Item.count} rows in the items table."

user_hashes = [
	{ :name => "John", :email => "johnj.k97@gmail.com"},
	{ :name => "Roberto", :email => "r@r.com"},
	{ :name => "Akaash", :email => "a@a.com"}
]

User.destroy_all 
user_hashes.each do |u_hash|
	u = User.new
	u.name = u_hash[:name]
	u.email = u_hash[:email]
	u.save
end 

puts "There are now #{User.count} rows in the users table."

