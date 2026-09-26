#Control flow

#Boolean function All, any

Email = ""
phone ="809-752-3321"
username = ""
#Allows registration if any field is filled 
print(any([Email, phone,username]))
#__________False___True__False: como una se cumplio devolvio True en el print
print(all([Email, phone,username])) 
#__________False___True__False: como una se cumplio devolvio False en el print

#Comparison Operators: ==, !=, <, >, >=, <=

print("10 == 10:",10 == 10)
print("10 != 10:",10 != 10) # Operator "<>" is not supported in Python 3
print("7 > 3:",7 > 3)
print("7 >= 3:",7 >= 3)
print("3 < 7:",3 < 7)
print("7 <= 7:",7 <= 7)

#Logical Operators: and, or, not

print("Operators: and ",3 > 1 and 5 <1)
print("Operators: or ",3 > 1 or 5 <1)
print("Operators: not ",not 3 > 2) # cambia de False a true en viceversa 

#Execution order
# "and" has higher priority than "or"

# Identity(is) operator: Checks if two variables refer to the same object in memory