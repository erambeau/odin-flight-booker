class Flight < ApplicationRecord
  belongs_to :hippoport_depart , :class_name => "Hippoport"
  belongs_to :hippoport_arrival, :class_name => "Hippoport"


end
