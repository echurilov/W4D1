# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user1 = User.create({username: "jolene"})
user2 = User.create({username: "nanners"})
user3 = User.create({username: "smolmol"})

artwork1 = Artwork.create({title: "Untitled", image_url: "jahfeiuu", artist_id: user1.id})
artwork2 = Artwork.create({title: "Guernica", image_url: "oisahfad", artist_id: user1.id})
artwork3 = Artwork.create({title: "My ARt", image_url: "aosijhov", artist_id: user3.id})

share1 = ArtworkShare.create({artwork_id: artwork1.id, viewer_id: user2.id})
share2 = ArtworkShare.create({artwork_id: artwork1.id, viewer_id: user3.id})
share3 = ArtworkShare.create({artwork_id: artwork2.id, viewer_id: user2.id})
share4 = ArtworkShare.create({artwork_id: artwork3.id, viewer_id: user1.id})

comment1 = Comment.create({user_id: user2.id, artwork_id: artwork1.id, body: "Great picture!"})
comment2 = Comment.create({user_id: user3.id, artwork_id: artwork1.id, body: "Okay picture!"})

puts "Seeded!"