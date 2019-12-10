class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :products
  
  validates :notes, length: {maximum: 500,
                             too_long: "500 characters is the maximum allowed"},
                    allow_blank: true
#  validates :name, presence: true, uniqueness: true
  
end



