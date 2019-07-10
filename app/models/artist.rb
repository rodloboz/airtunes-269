class Artist < ApplicationRecord
  has_many :albums

  validates :name, :image_url, presence: true, uniqueness: true
end
