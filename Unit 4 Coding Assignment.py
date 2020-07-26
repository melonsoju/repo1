#Define array
a = [2, 4, 3, 10, 33]
Total = sum(a)
Count = len(a)
#Find average
average = Total/Count
#Find 20% of average
avg20 = (average * 0.20)
print("Average of given list : ",round(average,2))
print("Array Numbers that are higher than Average by 20% are : ")
for num in a:
    #Output numbers higher than average by 20%
    if num > (avg20 + average):
        print(num, end=' ')
print()
