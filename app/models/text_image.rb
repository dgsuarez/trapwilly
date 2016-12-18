class TextImage < ApplicationRecord
  mount_uploader :image, ImageUploader
end
