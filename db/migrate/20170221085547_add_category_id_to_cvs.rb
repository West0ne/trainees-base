class AddCategoryIdToCvs < ActiveRecord::Migration[5.0]
  def change
    add_column :cvs, :category_id, :integer
  end
end
