class AddUserIdToCommentsAndArticles < ActiveRecord::Migration[5.2]
  def change
    add_column(:articles, :user_id, :integer)
    add_column(:comments, :user_id, :integer)
  end
end
