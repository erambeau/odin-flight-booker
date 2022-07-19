class Booking < ApplicationRecord
  belongs_to :flight
  has_many :wizards
  accepts_nested_attributes_for :wizards
end
