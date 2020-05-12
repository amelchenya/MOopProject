class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :characteristics,dependent: :destroy
    belongs_to :category
   
end
