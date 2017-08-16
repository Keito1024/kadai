class AddCategoryIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_index :articles, :category_id
  end
end
