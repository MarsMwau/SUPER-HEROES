# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "🌱 Start Seeding data..."

# Create 10 heroes
puts "🌱 Start Seeding Hero Data..."
20.times do
  hero = Hero.create(
    name: Faker::Superhero.name,
    super_name: Faker::Superhero.descriptor
  )

  # Create 10 powers
  puts "🌱 Start Seeding Powers Data..."
  powers = []
  20.times do
    powers << Power.create(
      name: Faker::Superhero.power,
      description: "Grants the wielder the power of #{Faker::Superhero.power}, allowing them to #{Faker::Superhero.power}"
    )
  end

  # Give each hero between 1 and 3 powers
  puts "🌱 Start Seeding HeroPowers Data..."
  rand(1..3).times do
    power = powers.sample

    HeroPower.create(
      hero_id: hero.id,
      power_id: power.id,
      strength: %w[Strong Weak Average].sample
    )
  end
end
puts "🌱 Done Seeding Data..."
