# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ friend_name: 'Star Wars' }, { friend_name: 'Lord of the Rings' }])
#   Character.create(friend_name: 'Luke', movie: movies.first)

# i = 1
# until i == 21 do
#   Friend.create(
#     friend_name: Faker::Funnyfriend_name.friend_name
#   )
#   i += 1
# end
#
# j = 1
# ids = (1..20).to_a
# ids.shuffle!
# until j == 21 do
#   SpiritAnimal.create(
#     spirit_animal: Faker::Creature::Animal.friend_name,
#     friends_id: ids[j-1]
#   )
#   j += 1
# end

# i = 1
# until i == 41 do
#   Band.create({
#     band_id: i,
#     band_name: Faker::Music.band,
#     records_sold: rand(1..999999)
#     })
#     i += 1
# end

# #seed the friends_music table randomly
# music_id = 1
# ids = (1..20).to_a
# ids.delete(rand(1..20))
# ids.shuffle!
# ids.each do |id|
#   numbands = rand(1..4)
#   i = 1
#   while i <= numbands do
#     FriendsMusic.create({
#         music_id: music_id,
#         music_friend_id: id,
#         music_band_id: rand(1..41)
#       })
#     i += 1
#     music_id += 1
#   end
# end

#hard-code the friends table
Friend.create([
  {friend_id: 1, friend_name: "Alf"},
  {friend_id: 2, friend_name: "Rupert McCuddles"},
  {friend_id: 3, friend_name: "Max Power"},
  {friend_id: 4, friend_name: "Fred Durst"},
  {friend_id: 5, friend_name: "Art Major"},
  {friend_id: 6, friend_name: "Chris Dirt Stevens"},
  {friend_id: 7, friend_name: "Ogey Ogelthorpe"},
  {friend_id: 8, friend_name: "Zoltan Pepper"},
  {friend_id: 9, friend_name: "Seymour Buttz"},
  {friend_id: 10, friend_name: "Dilbert Pickles"},
  {friend_id: 11, friend_name: "Sandwich Waverly"},
  {friend_id: 12, friend_name: "Barney Dinkles"},
  {friend_id: 13, friend_name: "Virginia Beach"},
  {friend_id: 14, friend_name: "Rose Bush"},
  {friend_id: 15, friend_name: "Mace Windu"},
  {friend_id: 16, friend_name: "Marshall Law"},
  {friend_id: 17, friend_name: "Woody Forrest"},
  {friend_id: 18, friend_name: "Rocky Rhoades"},
  {friend_id: 19, friend_name: "Sue Yu"},
  {friend_id: 20, friend_name: "Kerry Oki"}
  ])

#hard-code the spirit_animals table
  SpiritAnimal.create([
    {spirit_animal_id: 1, spirit_animal: "crocodile", spirit_animal_friend_id: 16},
    {spirit_animal_id: 2, spirit_animal: "bear", spirit_animal_friend_id: 8},
    {spirit_animal_id: 3, spirit_animal: "kangaroo", spirit_animal_friend_id: 4},
    {spirit_animal_id: 4, spirit_animal: "brontosaurus", spirit_animal_friend_id: 10},
    {spirit_animal_id: 5, spirit_animal: "mallard", spirit_animal_friend_id: 19},
    {spirit_animal_id: 6, spirit_animal: "deer", spirit_animal_friend_id: 12},
    {spirit_animal_id: 7, spirit_animal: "porpoise", spirit_animal_friend_id: 14},
    {spirit_animal_id: 8, spirit_animal: "herring", spirit_animal_friend_id: 17},
    {spirit_animal_id: 9, spirit_animal: "baboon", spirit_animal_friend_id: 18},
    {spirit_animal_id: 10, spirit_animal: "ferret", spirit_animal_friend_id: 6},
    {spirit_animal_id: 11, spirit_animal: "hedgehog", spirit_animal_friend_id: 3},
    {spirit_animal_id: 12, spirit_animal: "mammoth", spirit_animal_friend_id: 20},
    {spirit_animal_id: 13, spirit_animal: "sardine", spirit_animal_friend_id: 9},
    {spirit_animal_id: 14, spirit_animal: "horse", spirit_animal_friend_id: 7},
    {spirit_animal_id: 15, spirit_animal: "squirrel", spirit_animal_friend_id: 13},
    {spirit_animal_id: 16, spirit_animal: "mouse", spirit_animal_friend_id: 2},
    {spirit_animal_id: 17, spirit_animal: "hornet", spirit_animal_friend_id: nil},
    {spirit_animal_id: 18, spirit_animal: "monkey", spirit_animal_friend_id: 1},
    {spirit_animal_id: 19, spirit_animal: "snail", spirit_animal_friend_id: 5},
    {spirit_animal_id: 21, spirit_animal: "sardine", spirit_animal_friend_id: 15}
    ])

#hard-code the bands table
Band.create([
  {band_id: 1, band_name: "Limp Bizkit", records_sold: 598741},
  {band_id: 2, band_name: "Jimi Hendrix", records_sold: 654321},
  {band_id: 3, band_name: "Queen", records_sold: 785219},
  {band_id: 4, band_name: "Cootie Williams", records_sold: 2762},
  {band_id: 5, band_name: "B.B. King", records_sold: 248967},
  {band_id: 6, band_name: "Lady Gaga", records_sold: 562741},
  {band_id: 7, band_name: "Waylon Jennings", records_sold: 487236},
  {band_id: 8, band_name: "Guns N' Roses", records_sold: 621478},
  {band_id: 9, band_name: "Phil Collins", records_sold: 9751},
  {band_id: 10, band_name: "Oasis", records_sold: 3479},
  {band_id: 11, band_name: "Carlos Santana", records_sold: 547813},
  {band_id: 12, band_name: "AMZY", records_sold: 947812},
  {band_id: 13, band_name: "Slipknot", records_sold: 696969},
  {band_id: 14, band_name: "Madonna", records_sold: 75193},
  {band_id: 15, band_name: "Coldplay", records_sold: 5493},
  {band_id: 16, band_name: "The Who", records_sold: 7942},
  {band_id: 17, band_name: "Papa Roach", records_sold: 123497},
  {band_id: 18, band_name: "Max Roach", records_sold: 7539},
  {band_id: 19, band_name: "White Stripes", records_sold: 123697},
  {band_id: 20, band_name: "Smash Mouth", records_sold: 986311},
  {band_id: 21, band_name: "Offspring", records_sold: 4593},
  {band_id: 22, band_name: "Johnny Cash", records_sold: 6489},
  {band_id: 23, band_name: "Velvet Revolver", records_sold: 8423},
  {band_id: 24, band_name: "Destiny's Child", records_sold: 9753},
  {band_id: 25, band_name: "Leonard Cohen", records_sold: 4723},
  {band_id: 26, band_name: "Joy Division", records_sold: 4297},
  {band_id: 27, band_name: "Muddy Waters", records_sold: 781111},
  {band_id: 28, band_name: "Black Flag", records_sold: 9431},
  {band_id: 29, band_name: "Bee Gees", records_sold: 3167},
  {band_id: 30, band_name: "Dizzy Gillespie", records_sold: 3497},
  {band_id: 31, band_name: "Bob Marley (and the Wailers)", records_sold: 420000},
  {band_id: 32, band_name: "Herbie Hancock", records_sold: 823169},
  {band_id: 33, band_name: "Korn", records_sold: 128963},
  {band_id: 34, band_name: "Britney Spears", records_sold: 598741},
  {band_id: 35, band_name: "Grace Jones", records_sold: 75395},
  {band_id: 36, band_name: "Foxfield Four", records_sold: 54693},
  {band_id: 37, band_name: "Spinal Tap", records_sold: 187539},
  {band_id: 38, band_name: "Van Morrison", records_sold: 248763},
  {band_id: 39, band_name: "Sugar Ray", records_sold: 249355},
  {band_id: 40, band_name: "Slayer", records_sold: 666666},
  {band_id: 41, band_name: "Tool", records_sold: 31678}
  ])

#hard-code the bands friends_music table
FriendsMusic.create([
  {music_id: 1, music_friend_id: 13, music_band_id: 25},
  {music_id: 2, music_friend_id: 13, music_band_id: 30},
  {music_id: 3, music_friend_id: 13, music_band_id: 27},
  {music_id: 4, music_friend_id: 13, music_band_id: 4},
  {music_id: 5, music_friend_id: 16, music_band_id: 39},
  {music_id: 6, music_friend_id: 9, music_band_id: 33},
  {music_id: 7, music_friend_id: 9, music_band_id: 3},
  {music_id: 8, music_friend_id: 9, music_band_id: 36},
  {music_id: 9, music_friend_id: 11, music_band_id: 38},
  {music_id: 10, music_friend_id: 11, music_band_id: 30},
  {music_id: 11, music_friend_id: 11, music_band_id: 12},
  {music_id: 12, music_friend_id: 11, music_band_id: 2},
  {music_id: 13, music_friend_id: 18, music_band_id: 39},
  {music_id: 14, music_friend_id: 18, music_band_id: 13},
  {music_id: 15, music_friend_id: 18, music_band_id: 25},
  {music_id: 16, music_friend_id: 18, music_band_id: 36},
  {music_id: 17, music_friend_id: 5, music_band_id: 5},
  {music_id: 18, music_friend_id: 5, music_band_id: 17},
  {music_id: 19, music_friend_id: 4, music_band_id: 6},
  {music_id: 20, music_friend_id: 4, music_band_id: 34},
  {music_id: 21, music_friend_id: 8, music_band_id: 26},
  {music_id: 22, music_friend_id: 19, music_band_id: 13},
  {music_id: 23, music_friend_id: 19, music_band_id: 11},
  {music_id: 24, music_friend_id: 19, music_band_id: 6},
  {music_id: 25, music_friend_id: 6, music_band_id: 18},
  {music_id: 26, music_friend_id: 3, music_band_id: 31},
  {music_id: 27, music_friend_id: 3, music_band_id: 35},
  {music_id: 28, music_friend_id: 3, music_band_id: 18},
  {music_id: 29, music_friend_id: 17, music_band_id: 18},
  {music_id: 30, music_friend_id: 17, music_band_id: 17},
  {music_id: 31, music_friend_id: 17, music_band_id: 26},
  {music_id: 32, music_friend_id: 12, music_band_id: 26},
  {music_id: 33, music_friend_id: 12, music_band_id: 34},
  {music_id: 34, music_friend_id: 12, music_band_id: 20},
  {music_id: 35, music_friend_id: 14, music_band_id: 3},
  {music_id: 36, music_friend_id: 1, music_band_id: 22},
  {music_id: 37, music_friend_id: 1, music_band_id: 34},
  {music_id: 38, music_friend_id: 1, music_band_id: 26},
  {music_id: 39, music_friend_id: 7, music_band_id: 34},
  {music_id: 40, music_friend_id: 7, music_band_id: 30},
  {music_id: 41, music_friend_id: 7, music_band_id: 31},
  {music_id: 42, music_friend_id: 15, music_band_id: 36},
  {music_id: 43, music_friend_id: 15, music_band_id: 34},
  {music_id: 44, music_friend_id: 15, music_band_id: 27},
  {music_id: 45, music_friend_id: 15, music_band_id: 10},
  {music_id: 46, music_friend_id: 10, music_band_id: 10},
  {music_id: 47, music_friend_id: 10, music_band_id: 20},
  {music_id: 48, music_friend_id: 10, music_band_id: 25},
  {music_id: 49, music_friend_id: 2, music_band_id: 21},
  {music_id: 50, music_friend_id: 2, music_band_id: 32},
  {music_id: 51, music_friend_id: 2, music_band_id: 33},
  {music_id: 52, music_friend_id: 2, music_band_id: 40}
  ])
