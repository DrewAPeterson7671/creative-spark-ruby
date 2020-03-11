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
  articles.push(Article.create!(title: Faker::Book.title, author: Faker::TvShows::RickAndMorty.character, content: Faker::Lorem.characters(number: 500)))
  articles
  50.times do |comment|
    articles.each do |article|
    Comment.create! :user => Faker::TvShows::Simpsons.character,
                    :remark => Faker::Lorem.characters(number: 50),
                    :article_id => article.id
    end
  end
end

p "Created #{Article.count} articles"
