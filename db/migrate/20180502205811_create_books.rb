class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :classification
      t.string :genre
      t.string :book_type
      t.integer :year

      t.timestamps
    end
  end
end
