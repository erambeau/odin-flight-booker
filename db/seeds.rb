# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hippoport::delete_all
Flight::delete_all

Hippoport.create(code: 'PLD')
Hippoport.create(code: 'BXB')
Hippoport.create(code: 'DSG')

# PLD - BXB - 2022-07-17


Flight.create(datetime_depart: "2022-07-16 05:00:00" \
           ,  duration: 18000 \
           ,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
           ,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )

Flight.create(datetime_depart: "2022-07-16 12:00:00" \
           ,  duration: 18000 \
           ,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
           ,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )


Flight.create(datetime_depart: "2022-07-16 19:00:00" \
,  duration: 18000 \
,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )


Flight.create(datetime_depart: "2022-07-23 05:00:00" \
,  duration: 18000 \
,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )


Flight.create(datetime_depart: "2022-07-20 05:00:00" \
    ,  duration: 18000 \
    ,  hippoport_depart_id: Hippoport.where(code: "BXB").ids[0] \
    ,  hippoport_arrival_id: Hippoport.where(code: "PLD").ids[0]    )

Flight.create(datetime_depart: "2022-07-27 05:00:00" \
,  duration: 18000 \
,  hippoport_depart_id: Hippoport.where(code: "BXB").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "PLD").ids[0]    )



Flight.create(datetime_depart: "2022-07-18 05:00:00" \
    ,  duration: 27000 \
    ,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
    ,  hippoport_arrival_id: Hippoport.where(code: "DSG").ids[0]    )

Flight.create(datetime_depart: "2022-07-25 05:00:00" \
,  duration: 27000 \
,  hippoport_depart_id: Hippoport.where(code: "PLD").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "DSG").ids[0]    )


Flight.create(datetime_depart: "2022-07-22 05:00:00" \
,  duration: 27000 \
,  hippoport_depart_id: Hippoport.where(code: "DSG").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "PLD").ids[0]    )

Flight.create(datetime_depart: "2022-07-29 05:00:00" \
,  duration: 27000 \
,  hippoport_depart_id: Hippoport.where(code: "DSG").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "PLD").ids[0]    )




Flight.create(datetime_depart: "2022-07-19 05:00:00" \
    ,  duration: 12000 \
    ,  hippoport_depart_id: Hippoport.where(code: "BXB").ids[0] \
    ,  hippoport_arrival_id: Hippoport.where(code: "DSG").ids[0]    )

Flight.create(datetime_depart: "2022-07-26 05:00:00" \
,  duration: 12000 \
,  hippoport_depart_id: Hippoport.where(code: "BXB").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "DSG").ids[0]    )


Flight.create(datetime_depart: "2022-07-23 05:00:00" \
,  duration: 12000 \
,  hippoport_depart_id: Hippoport.where(code: "DSG").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )

Flight.create(datetime_depart: "2022-07-30 05:00:00" \
,  duration: 12000 \
,  hippoport_depart_id: Hippoport.where(code: "DSG").ids[0] \
,  hippoport_arrival_id: Hippoport.where(code: "BXB").ids[0]    )
