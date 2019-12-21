class CreateContactBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_books do |t|

      t.timestamps
    end
  end
end
