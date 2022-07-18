class Hippoport < ApplicationRecord
    has_many :flights_depart , :class_name => "Flight", :foreign_key => "hippoport_depart_id"
    has_many :flights_arrival, :class_name => "Flight", :foreign_key => "hippoport_arrival_id"
end
