class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.string :user_name

      t.timestamps
    end
  end
end
