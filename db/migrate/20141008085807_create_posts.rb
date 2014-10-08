class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :first_comment_id

      t.timestamps null: false
    end
  end
end
