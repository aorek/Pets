# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PetType.create :id => 1, :type_name => 'Dog'
PetType.create :id => 2, :type_name => 'Rat'
PetType.create :id => 3, :type_name => 'Cat'
PetType.create :id => 4, :type_name => 'Chinchilla'
