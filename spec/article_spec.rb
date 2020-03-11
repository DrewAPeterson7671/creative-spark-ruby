require 'rails_helper'

describe Article do
  it { should have_many(:comments) }
end

describe Article do
  it("has many comments") do
    article = Article.create(title: "article")
    comment1 = Comment.create(remark: "comment1", article_id: article.id)
    comment2 = Comment.create(remark: "comment2", article_id: article.id)
    expect(article.comments()).to(eq([comment1, comment2]))
  end
end
