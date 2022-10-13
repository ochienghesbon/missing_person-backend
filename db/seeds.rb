# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding data!"
People.create(name: "Dennis",age:20, location: "Nairobi", image: "", description: "The data", is_missing:true )
People.create(name: "Murage",age:22, location: "Kisunu", image: "", description: "The data", is_missing:true )
People.create(name: "Erick",age:27, location: "Narok", image: "", description: "The data", is_missing:true )


