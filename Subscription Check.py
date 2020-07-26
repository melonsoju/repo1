import datetime
print(" Menu:\n Enter 1 Annual subscription. \n Enter 2 Daily subscription.")
subscription_status = int(input(" Please enter your subscription type: "))
if subscription_status==1:
    #Displays subscription type
    print("You have selected Annual subscription.")
    date = datetime.datetime.now()
    print("1.Monday 2.Tuesday 3.Wednesday 4.Thursday 5.Friday 6.Saturday 7.Sunday")
    now = date.day
    #Prompt and read the valid day from the user
    day_subscribed=int(input("Please enter a valid day(in number): "))
    pickup_time = int(input("Please enter your pick up time(in minutes) :"))
    drop_off_time = int(input("Please enter your drop of time(in minutes) :"))
elif subscription_status==2:
    #Displays subscription type
    print("You have selected Daily subscription.")
    date = datetime.datetime.now()
    print("1.Monday 2.Tuesday 3.Wednesday 4.Thursday 5.Friday 6.Saturday 7.Sunday")
    now = date.day
    #Prompt and read the valid day from the user
    day_subscribed=int(input("Please enter a valid day(in number): "))
    pickup_time = int(input("Please enter your pick up time(in minutes) :"))
    drop_off_time = int(input("Please enter your drop of time(in minutes) :"))
        
