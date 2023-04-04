require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "what is your store's name"
storeName = $stdin.gets.chomp
puts storeName

WestEnd = Store.create(name: storeName)
puts WestEnd.errors.full_messages
# Name is too short (minimum is 3 characters)
# Annual revenue is not a number
# Must carry mens or womens apparel store must carry apparel