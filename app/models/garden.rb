class Garden < ApplicationRecord
  has_many :child_minders
  has_many :children
  has_many :garden_parent
  has_many :contact_book
  has_many :visit_day
  has_many :garden_image
  has_many :parent

end
