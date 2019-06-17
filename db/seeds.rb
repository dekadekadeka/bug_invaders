# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Comment.destroy_all

User.create(username: "Deka", email: "dekadekadeka@gmail.com")

Game.create(user_id: User.last.id, score: 26)

Comment.create(content: "You suck", user_id: User.last.id, game_id: Game.last.id)
