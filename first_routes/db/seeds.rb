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

3.times do 
    name = Faker::Name.unique.name
    User.create(username: name)
end

# art1 = User.create(username: 'KKT')

3.times do 
    name = Faker::Food.fruits
    url = Faker::Verb.base
    Artwork.create(title: name, image_url: url, artist_id: User.first[:id] )
end

3.times do 
    name = Faker::Book.title
    url = Faker::Verb.base
    Artwork.create(title: name, image_url: url , artist_id: User.last[:id] )
end
 
# user_first_index = User.first[:id]
# user_last_index = User.last[:id]

# (user_first_index..user_last_index).each do |artist_id|
#     temp = Artwork.select {|art| if Artwork[:artist_id]=artist_id}
#     if !temp.empty?
#         temp.each do |art|
            
#         end
#     end
# end
ArtworkShare.create(artwork_id: 1 , viewer_id: 1)
ArtworkShare.create(artwork_id: 1 , viewer_id: 2)
ArtworkShare.create(artwork_id: 1 , viewer_id: 3)
ArtworkShare.create(artwork_id: 2 , viewer_id: 1)
ArtworkShare.create(artwork_id: 3 , viewer_id: 1)
#artwork shares
# id | artwork_id | viewer_id | created_at | updated_at