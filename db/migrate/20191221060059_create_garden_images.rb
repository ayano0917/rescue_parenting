class CreateGardenImages < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_images do |t|
      t.references :garden, foreign_key: true
      t.string :image, null: false
      t.timestamps
    end
  end
end
