class Listing < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :listing_type, presence: true
  validates :price, presence: true
end
