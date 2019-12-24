class ChangeCommentsColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :contents, :text
    remove_column :comments, :contents, :string
  end
end
