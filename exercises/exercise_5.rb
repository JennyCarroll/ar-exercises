require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
totalRevenue = Store.all.sum(:annual_revenue)
puts totalRevenue

averageRevenue = totalRevenue/Store.count
puts averageRevenue

largeAnnualSales = Store.where('annual_revenue >= 1000000')

puts largeAnnualSales.sum(:annual_revenue)