class AddColumnToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :parent_nickname, :string,  null: false
    add_column :parents, :gender_id, :integer,  null: false
    add_column :parents, :parent_icon, :string
    add_column :parents, :phone, :string,  null: false, unique: true
  end
end
