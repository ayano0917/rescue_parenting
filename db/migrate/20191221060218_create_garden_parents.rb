class CreateGardenParents < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_parents do |t|
      t.string :parent_nickname, null: false
      t.integer :gender_id, null: false
      t.string :parent_icon, null: false
      t.timestamps
    end
  end
end
