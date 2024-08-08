# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning up the database...🧹'
PlanFeature.destroy_all
Feature.destroy_all
Category.destroy_all
Plan.destroy_all

puts 'Creating categories...🏷'

freelance_category = Category.find_or_create_by!(name: 'Freelancer')
startup_category = Category.find_or_create_by!(name: 'Startup', featured: true)
enterprise_category = Category.find_or_create_by!(name: 'Enterprise')

basic_features = [
  Feature.create!(name: '24/7 support', description: ''),
  Feature.create!(name: '1 card 1 Mastercard', description: ''),
  Feature.create!(name: '30 withdrawals', description: '')
]

smart_features = [
  Feature.create!(name: '1 card 1 Mastercard and business card for speacial purposes', description: ''),
  Feature.create!(name: '60 withdrawals and 2 cheques', description: ''),
  Feature.create!(name: 'Pre-contability pack', description: 'Invoice management and so on'),
  Feature.create!(name: '24/7 support', description: '')
]

premium_features = [
  Feature.create!(name: '1 card 1 Mastercard and business card for speacial purposes', description: ''),
  Feature.create!(name: '100 withdrawals and 5 cheques', description: ''),
  Feature.create!(name: 'Pre-contability pack', description: 'Invoice management and so on'),
  Feature.create!(name: '24/7 support', description: '')
]

[freelance_category, startup_category, enterprise_category].each.with_index(1) do |category, index|
  puts "Creating plans for #{category.name}...🚀"
  basic = Plan.create(name: 'Basic', description: "Basic plan for #{category.name}", price_cents: 1000 * index,
                      image_name: 'plan_1.png', category:)
  basic_features.each do |feature|
    basic.features << feature
  end
  puts "Basic plan created!🎉 With #{basic.features.size} features"

  smart = Plan.create(name: 'Smart', description: "Smart plan for#{category.name}", price_cents: 5000 * index,
                      image_name: 'plan_2.png', category:)
  smart_features.each do |feature|
    smart.features << feature
  end
  puts "Smart plan created!🎉 With #{smart.features.size} features"

  premium = Plan.create(name: 'Premium', description: "Premium plan for big #{category.name}", image_name: 'plan_3.png', price_cents: 10_000 * index,
                        category:)
  premium_features.each do |feature|
    premium.features << feature
  end
  puts "Premium plan created!🎉 With #{premium.features.size} features"
end

puts 'Seeds created!🌱'
