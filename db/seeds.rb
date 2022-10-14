# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding data...."
People.create(name: "Dennis",age:20, location: "Nairobi", image: "https://i.pinimg.com/564x/e2/83/e2/e283e20690e323b711f7aa926de36bcf.jpg", description: "The data", is_missing:true )
People.create(name: "Murage",age:22, location: "Kisunu", image: "https://i.pinimg.com/564x/43/64/15/436415f9f9cd5353bdc1a36616faade7.jpg", description: "The data", is_missing:true )
People.create(name: "Erick",age:27, location: "Narok", image: "https://i.pinimg.com/564x/bf/e9/a3/bfe9a3c1f5014108aa6e2e8a336bb993.jpg", description: "The data", is_missing:true )

User.create(firstname: "Dennis", lastname: "kosgei", username: "Deno", password: "123456")
User.create(firstname: "Eric", lastname: "M", username: "eric", password: "1234567")
 
puts "Done seeding!"