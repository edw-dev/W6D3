# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# INSERT INTO users
# VALUES ('Ed', 'buddy');

# User.create(name: 'Ed', email: 'buddy@gmail.com')

# User.create(name: 'Obama', email: 'bamarocks@gmail.com')

# User.create(name:'Trump', email: 'DUmp@gmail.com')
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

# User.create(username: 'Buddy')
# User.create(username: 'Ed')
# User.create(username: 'Amin')


10.times do 
    name = Faker::Name.unique.name
    User.create(username: name)
end