class CreateGardenImages < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_images do |t|

      t.timestamps
    end
  end
end
