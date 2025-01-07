# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ch = Restaurant.new(name: 'chinese-food', category: 'chinese', address: 'chinastreet')
it = Restaurant.new(name: 'italian-food', category: 'italian', address: 'italiastreet')
jp = Restaurant.new(name: 'japanese-food', category: 'japanese', address: 'japanstreet')
fr = Restaurant.new(name: 'french-food', category: 'french', address: 'chinastreet')
be = Restaurant.new(name: 'belgian-food', category: 'belgian', address: 'belgiumstreet')

[ch, it, jp, fr, be].each do |rest|
  puts "creating #{rest.name} if valid: #{rest.valid?}"
  rest.save!
end
