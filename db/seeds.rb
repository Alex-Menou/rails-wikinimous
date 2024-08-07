# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Destroy all data'
Article.destroy_all
puts 'Destroy done'

for a in 1..10 do
  puts 'Creating Article'
  title = Article.create!(title: Faker::Fantasy::Tolkien.character, content: Faker::Fantasy::Tolkien.poem)
  puts title.title
  puts title.content
  puts 'Article Created'
end
