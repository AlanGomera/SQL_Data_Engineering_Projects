#Working with number: INT, FLOAT and Complex

import math
#type

X = 5
Y = 5.7
Z =2+3j
print(type(X))
print(type(Y))
print(type(Z))

#Convert string to INT 
A = '24'
print("The variable A is:",type(A))
A = float(A) # converting A from str to FLOAT
print("The variable A is:",type(A))
print(A)

# Math operators: +, -,* ,/ ,// ,% , **

print(2 + 3)
print(5 - 3)
print(4 * 2)
print(7 / 2)
print(7 // 2) # it divides two numbers and rounds down
print(7 % 2) # it used to check if a number is even and we get the remainder
print(2 **3) # exponentiation, it raises a number to the power of another number

X = 2
X +=3 # this equal 5
print("This is X+=3:",X) # print the number 5


#Rounding: abs(), round(), ceil(), floor(), trunc()

print(2 -10)

#Rounding Numbers
Price = 35.548756
print(Price.__round__(2))
print(round(Price,2))
print(math.floor(Price)) # floor() is not a built-in function meaning that it belongs to Math dodule
print(math.ceil(Price))
print(math.trunc(Price))#tranc cuts off the decimal part and keeps the whole number (no rounding)
print(int(Price)) # it does the same as trunc() 

# Random: random() and randint()

#Random
import random
print(random.random()) # returns a random float between 0.0 and 1.0
print(random.randint(1,10))

#Validation: is_integer(), isinstance()

X = 7.45
print(X.is_integer()) # Check if a float has no decimal part