# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

15.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  Article.create!(author_id: User.all.sample.id, title: Faker::Hipster.word, body: Faker::Hipster.sentences)
  Comment.create!(commenter_id: User.all.sample.id, article_id: Article.all.sample.id, body: Faker::Hipster.sentence)
end