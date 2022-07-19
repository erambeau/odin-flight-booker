class BookingsController < ApplicationController

    #params[:selected_flight]


    def new
        @booking = Booking.new

        @hippoports = Hippoport.all
        @selected_flight = Flight.find(params[:selected_flight])
        @nb_passengers = params[:nb_passengers].to_i

        #@wizards = Array.new(@nb_passengers) { Wizard.new }
        #@wizard = Wizard.new

    end

    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to root_path
        else
            flash.now[:alert] = @booking.errors.full_messages
        end  
    end

    private
	def booking_params
		params.require(:booking).permit(:flight_id, :nbpassengers, :wizard, wizards: [:name, :email])
	end

end
