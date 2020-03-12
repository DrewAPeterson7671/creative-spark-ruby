# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.destroy_all
Comment.destroy_all

50.times do |index|
  articles = []
  articles.push(Article.create!(title: Faker::Book.title, author: Faker::TvShows::RickAndMorty.character, content: Faker::Lorem.paragraphs(number: 500).join))
  articles
  rand(3..15).times do |comment|
    articles.each do |article|
    Comment.create! :user => Faker::TvShows::Simpsons.character,
                    :remark => Faker::Lorem.paragraph(sentence_count: rand(1..10)),
                    :article_id => article.id
    end
  end
end
50.times do |index|
  users = []
  users.push(User.create!(email: Faker::Internet.email, username: Faker::TvShows::RickAndMorty.character, admin: false))
  users
end




p "Created #{Article.count} articles"
# p "Article #{Article.first.content}"
