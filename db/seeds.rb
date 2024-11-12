# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Task.destroy_all

names = ["play", "shower", "music", "garden", "school"]
boolean = [true, false]

10.times do
  Task.create(
    title: names.sample,
    details: Faker::Quotes::Chiquito.joke,
    completed: boolean.sample
  )
end
