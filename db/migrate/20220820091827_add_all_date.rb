class AddAllDate < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :all_day, :boolean, default: false, null: false
  end
end
