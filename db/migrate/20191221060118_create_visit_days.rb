class CreateVisitDays < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_days do |t|
      t.references :garden, foreign_key: true
      t.integer :visit_year, null: false
      t.integer :visit_month, null: false
      t.integer :visit_day, null: false
      t.timestamps
    end
  end
end
