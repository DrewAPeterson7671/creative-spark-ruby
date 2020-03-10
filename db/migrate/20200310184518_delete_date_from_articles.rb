class DeleteDateFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column(:articles, :date)
  end
end
