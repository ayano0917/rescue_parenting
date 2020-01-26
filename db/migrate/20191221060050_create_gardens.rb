class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      # t.string :room_name, null: false
      # t.integer :management_id, null: false
      # t.integer :start_year, null: false
      # t.integer :start_month, null: false
      # t.integer :start_day, null: false
      t.string :postal_code, null: false
      t.integer :prefecture_id, null: false
      t.integer :city_id, null: false
      t.string :detail
      t.string :building
      t.integer :childcare_person_num, null: false
      t.integer :acceptance_children_num, null: false
      t.integer :accepting_children_num, null: false
      t.integer :acceptance_age_id, null: false
      t.integer :business_open, null: false
      t.integer :business_close, null: false
      t.integer :visit_id, null: false
      t.timestamps
    end
  end
end
