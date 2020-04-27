class Product < ApplicationRecord
    has_many :characteristics
    belongs_to :category
end
