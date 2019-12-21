class CreateVisitDays < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_days do |t|

      t.timestamps
    end
  end
end
