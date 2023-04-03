require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
Whistler  = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts "#{store.name}, #{store.annual_revenue}"
end

@womens_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000')

for store in @womens_stores
  puts "#{store.name}, #{store.annual_revenue}"
end