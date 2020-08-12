require 'faker'

Restaurant.destroy_all

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  )
  puts '5 restaurants created !'
end
