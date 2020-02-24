class GardenImage < ApplicationRecord
  belongs_to :garden

  mount_uploader :image, ImageUploader
end

