#Defining the ride_costCalc function
def ride_costCalc(pickup_time,drop_off_time): # Calculate_fair function
ride_time = drop_off_time-pickup_time
#Time in minutes used for a ride
ride_cost=0
if ride_time<=30:
    ride_cost=0
elif ride_time>30 and ride_time<=60:
    ride_cost=1
elif ride_time>60 and ride_time<=120:
    ride_cost=3
elif ride_time>120 and ride_time<=600:
    ride_cost=7
elif ride_time>600:
    ride_cost=50+7
else:
    return "Invalid input"
return ride_cost
