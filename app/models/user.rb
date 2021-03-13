class User < ApplicationRecord
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'host_id'

  has_many :reviews, :foreign_key => 'guest_id'
  # has_many :trips, through: :listings, :source => 'reservations'
  has_many :trips, :class_name => "Reservation", foreign_key: 'guest_id' 
  # it seems like this is a way of renaming reservations, since you've already used it above?
end
  