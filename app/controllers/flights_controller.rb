class FlightsController < ApplicationController

    def index
        @flights = Flight.all
        @hippoport_options = Hippoport.all.map{ |h| [ h.code, h.id ] }
        @date_departure = Flight.all.map{ |f| f.formatted_date }.uniq.sort

        #@date_dropdown = Flight.select(strftime("%m-%d-%Y",datetime_depart))
        #@dates_options  = Flight.all.map{ |f| [f.datetime_depart, f.datetime_depart] }
        #@day_options = Flight.all.map{ |f| f.datetime_depart.day }.uniq.sort
        #@month_options = Flight.all.map{ |f| f.datetime_depart.month }.uniq.sort
        #@year_options = Flight.all.map{ |f| f.datetime_depart.year }.uniq.sort
    end

end
