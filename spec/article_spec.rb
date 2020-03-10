require 'rails_helper'

describe Article do
  it { should have_many(:comments) }
end

describe Article do
  it("has many comments") do
    album = Article.create(title: "article")
    comment1 = Comment.create(comment: "comment1", article_id: article.id)
    comment2 = Comment.create(comment: "comment2", article_id: article.id)
    expect(article.comments()).to(eq([comment1, comment2]))
  end
end
