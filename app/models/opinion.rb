class Opinion < ApplicationRecord
  belongs_to :comment
  mount_uploader :image, ImageUploader
end
