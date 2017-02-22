# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Song.destroy_all

u1 = User.create(
{
  email: 'bob@email.com',
  password: 'password',
  password_confirmation: 'password'
}
)

u1.songs.create([
{
  name: 'So American',
  artist: 'Portugal The Man'
},
{
  name: 'Entombed',
  artist: 'Deftones'
},
{
  name: 'Loving The Alien',
  artist: 'Velvet Revolver'
}
]
)

u2 = User.create(
{
  email: 'sarah@email.com',
  password: 'password',
  password_confirmation: 'password'
}
)

u2.songs.create(
{
  name: 'Soil\'s Song',
  artist: 'Katatonia'
})
