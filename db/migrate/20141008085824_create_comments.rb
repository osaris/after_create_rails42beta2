class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :post

      t.timestamps null: false
    end
  end
end
