class CreateChildMinders < ActiveRecord::Migration[5.2]
  def change
    create_table :child_minders do |t|

      t.timestamps
    end
  end
end
