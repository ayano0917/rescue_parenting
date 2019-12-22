class CreateContactBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_books do |t|
      t.references :garden, foreign_key: true
      t.references :child, foreign_key: true
      t.string :book_name, null: false
      t.string :book_name, null: false
      t.integer :use_id, null: false
      t.string :contact_comment, null: false
      t.timestamps
    end
  end
end
