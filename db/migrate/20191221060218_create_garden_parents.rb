class CreateGardenParents < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_parents do |t|

      t.timestamps
    end
  end
end
