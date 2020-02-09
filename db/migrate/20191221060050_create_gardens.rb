class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :postal_code, null: false
      t.integer :prefecture_id, null: false
      t.integer :city_id, null: false
      t.string :detail
      t.string :building
      t.integer :visit_id, null: false
      t.integer :price, null: false
      t.integer :acceptable_people, null: false
      t.timestamps
    end
  end
end
