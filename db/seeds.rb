require 'faker'

puts "Generating 5 restaurants..."

phones = [
  "02 04 68 37 56",
  "68 37 55 10 80",
  "57 66 81 63 40",
  "59 30 79 11 05",
  "84 27 60 17 55"
]

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: phones.sample,
    category: categories.sample
  )
  restaurant.save!
end

puts "Finished!"