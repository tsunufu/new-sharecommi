class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :shopname
      t.string :img
      t.string :category
      t.integer :assessment
      t.text :comment
      t.string :shopurl
      t.string :user_id

      t.timestamps
    end
  end
end
