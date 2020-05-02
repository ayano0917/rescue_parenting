class Garden < ApplicationRecord
  belongs_to :child_minder
  has_many :children
  has_many :garden_parent
  has_many :contact_book
  has_many :visit_day
  has_many :garden_image
  has_many :parent

  
end
