class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.float :author_price, default: 0.00
      t.float :selling_price, default: 0.00
      t.text :book_index
      t.text :about
      t.string :book_category
      t.string :youtube_link
      t.boolean :retired, default: false
      t.boolean :published, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
