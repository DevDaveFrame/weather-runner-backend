# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Run.destroy_all
UserPreference.destroy_all
Friendship.destroy_all

friend_array = ["Ian", "Luis", "Danny", "Tien", "David", "JR", "Andy", "Issa", "Steve", "Esther", "Marcos", "Diego", "Shawn", "Michael Jester", "Mike Causey" ]

friend_array.forEach |friend| do 
User.create(
  name: `#{friend}`,
  email: `fake#{friend}@gmail.com`,
  password:"foobar",
  bio: "I don't have a bio because I'm generated by a seeds file", 
  weekly_run_quota: 3,
  location: "Washington, D.C."
  )
end
