class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.references :parent, foreign_key: true
      t.string :child_nickname, null: false
      t.integer :gender_id, null: false
      t.integer :birth_year, null: false
      t.integer :birth_month, null: false
      t.integer :birth_day, null: false
      t.string :icon
      t.string :individuality
      t.string :allergies, null: false
      t.string :notes
      t.timestamps
    end
  end
end
