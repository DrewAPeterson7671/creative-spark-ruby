class RenameCommentColumnInComments < ActiveRecord::Migration[5.2]
  def change
    remove_column(:comments, :comment)
    add_column(:comments, :remark, :string)
  end
end
