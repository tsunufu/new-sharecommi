class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :img
      t.string :category
      t.integer :assessment
      t.text :comment
      t.string :url

      t.timestamps
    end
  end
end
