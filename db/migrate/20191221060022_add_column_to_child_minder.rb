class AddColumnToChildMinder < ActiveRecord::Migration[5.2]
  def change
    add_column :child_minders, :child_minder_nickname, :string
    add_column :child_minders, :gender_id, :integer
    add_column :child_minders, :icon, :string
    add_column :child_minders, :years_of_experience_h, :integer
    add_column :child_minders, :years_of_experience_y, :integer
    add_column :child_minders, :introduction, :string
  end
end
