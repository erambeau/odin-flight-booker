class BookingsController < ApplicationController

    #params[:selected_flight]


    def new
        @booking = Booking.new

        @hippoports = Hippoport.all
        @selected_flight = Flight.find(params[:selected_flight])
        @nb_passengers = params[:nb_passengers].to_i

        @nb_passengers.times { @booking.wizards.build }

    end

    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            flash[:notice] = "New Booking created."
            redirect_to root_path
        else
            flash[:alert] = @booking.errors.full_messages
            
            puts @booking.errors.full_messages

            @error = "Unknown Error"

            #redirect_to new_booking_path
        end  
    end

    private
	def booking_params
		params.require(:booking).permit(:flight_id, :nb_passengers, wizards_attributes: [:name, :email])
	end

end
