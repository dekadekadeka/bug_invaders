# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Game.destroy_all
Comment.destroy_all

20.times do
    User.create(username: Faker::FunnyName.two_word_name, email: Faker::Internet.free_email)
end

30.times do
    Game.create(user_id: User.all.sample.id, score: rand(100))
end

50.times do
    Comment.create(content: Faker::TvShows::Seinfeld.quote, user_id: User.all.sample.id, game_id: Game.all.sample.id)
end