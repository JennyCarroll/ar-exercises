require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jenny", last_name: "Carroll", hourly_rate: 800)
@store1.employees.create(first_name: "Anna", last_name: "DiLuzio", hourly_rate: 7)
@store2.employees.create(first_name: "Ariel", last_name: "Carroll", hourly_rate: 7000)
@store2.employees.create(first_name: "John", last_name: "DiLuzio", hourly_rate: 100000)
@store2.employees.create(first_name: "Someone", last_name: "Else", hourly_rate: 1)