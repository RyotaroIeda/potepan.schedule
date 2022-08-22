class AddPostAll < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :whole_day, :boolean, delault: false, null: false
  end
end
