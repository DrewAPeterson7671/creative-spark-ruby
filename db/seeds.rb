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
  articles.push(Article.create!(name: Faker::Food.fruits, price: Faker::Number.decimal(l_digits: 2), country: Faker::TvShows::RickAndMorty.location))
  articles
  50.times do |comment|
    articles.each do |article|
    Comment.create! :author => Faker::TvShows::Simpsons.character,
                    :content_body => Faker::Lorem.characters(number: 50),
                    :rating => rand(1..5),
                    :article_id => article.id
    end
  end
end

p "Created #{Article.count} articles"
