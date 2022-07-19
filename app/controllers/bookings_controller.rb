class BookingsController < ApplicationController

    #params[:selected_flight]


    def new
        @hippoports = Hippoport.all
        @selected_flight = Flight.find(params[:selected_flight])
        @nb_passengers = params[:nb_passengers].to_i

        #@wizards = Array.new(@nb_passengers) { Wizard.new }
        wizard = Wizard.new

    end

    def create

    end

end
