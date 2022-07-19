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

        if params.has_key?(:form_submitted_at_least_one_time)
            if params[:from_hippoport_id].blank?
                flash.now[:alert] = "From Hippoport empty"
            elsif params[:to_hippoport_id].blank?
                flash.now[:alert] = "To Hippoport empty"
            elsif params[:nb_passengers].blank?
                flash.now[:alert] = "Nb Passengers empty"
            elsif params[:date_departure].blank?
                flash.now[:alert] = "Date Departure empty"
            else
                @selected_date = params[:date_departure].to_date
                @matching_flights = Flight.where(  hippoport_depart_id: params[:from_hippoport_id] \
                                                 , hippoport_arrival_id: params[:to_hippoport_id] \
                                                 , datetime_depart: @selected_date.all_day  )
            end
        end

    end

end
