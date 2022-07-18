class FlightsController < ApplicationController

    def index
        @flights = Flight.all
        @departure_hippoports = Hippoport.all.map{ |h| [ h.code, h.id ] }
        @arrival_hippoports = @departure_hippoports
        @date_dropdown  = Flight.all.map{ |f| [ f.datetime_depart, f.datetime_depart ] }
    end

end
