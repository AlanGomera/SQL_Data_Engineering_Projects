# String functions, CATEGORIES


# Types: Working with Type()  and str()
name = "Alan"
print(type(name)) # With this function we can see the data type

age = 29
print(type(age))
print(age)
print("Your age is: " + str(age)) # converts any value into string value 
age = age + 5
age = str(age) # converts this value to str
print(age)


# Math: working with len() and count()


Password = '123a567890' # make sure the password meets minimum length requirements
print('The length is',len(Password))

if len(Password) <8: # the function len caunt everything including spaces
    print('The password is too short')
else:
    print('Password successful')    

# Counts how many times a specific word appear

Text = """
Python is easy to learn.
Python is powerful.
Many people love python.
"""
print(Text.count('Python')) # how many times the word Python appear (Eye this es case sensitive)


#Transformations: replace(), Split()

price = "1234,56" 
print(price.replace(',','.')) # this is to replace commas with dots in European-style decimal bumbers

Money_price ="$1,299.99" #Let's prepare this value for numeric conversion 

Money_price = float(Money_price.replace("$", "").replace(",", ""))

print(Money_price)

messy_phone = "+49 (176) 123-4567" #conver the messy number into a clean number format with only digits

messy_phone = int(messy_phone.replace("+","").replace("(","").replace(")","").replace(" ","").replace("-",""))
print(messy_phone)


#join str or contatenations

First_name = "Alan"
Last_name = "Gomera"
Full_name = First_name + " " + Last_name

print(Full_name)

# f-string


name = "Alan"
age = 34
is_student = False

print("My name is " + name + " I am " + str(age) + " years old, and studen status " + str(is_student))
print("My name is ", name, "I am ", age, "years old, and studen status", is_student)
print(f"My name is {name}, I am {age} years old, and student status {is_student}") # this is the best way

#split 

stamp = '2026-09-20'
print(stamp.split('-')) #splitting the date 
print(stamp)

#string repetition
print('ha' *3)

#indexing & Slicing
# Negative ::::::::::::: -5 -4 -3 -2 -1
# the index position of  "H  E  L  L  O"
#Positive:::::::::::::::  0  1  2  3  4
Hello = "Hello"
print(Hello[-5]) # this is getting the H since i select [-5] which is equal to [0]
print(Hello[0:3]) # getting the first 3 carater but the index 3 is no include
print(Hello[1:]) # start in the index 1 and print everything after that
print(stamp[0:4]) # extracting the years 
print(stamp[5:7]) # extract the moth
# example: [Start:end:steps] 



#Cleaning: Istrip(), rstrip(), strip(), lower(), upper()

#Remove blanks spaces 

blanks_spaces = "Engineering "
print(blanks_spaces.rstrip()) #removing right speces

blanks_spaces = " Engineering"
print(blanks_spaces.lstrip()) #removing left speces

blanks_spaces = " Engineering "
print(blanks_spaces.strip()) #removing both speces, using this, is the best pritice 

textv2 = '###ABC###'
print(textv2.strip("#")) # to remove special caracter

AA = " Alan gomera "
print(len(AA))
print(len(AA.strip())) # to see how many white spece with have in our data
print(len(AA) - len(AA.strip())) #number of speces


# Case conversion

Text = "python PROGRAMMING"
print(Text.lower().strip()) # make all latters lowercase using to standarized 
print(Text.upper().strip()) # make all latters uppercase using to standarized 

'''Advanced challenge: Turn the messy string into a single clean Summary with 
   name, role and age, of the veriable Ad_messy should look like"name: maria | role: data engineer | age: 27 "'''

Ad_messy = '968-Maria, (D@t@ Engineer );; 27'

print("name:",Ad_messy[4:9].lower(),"|","role:",Ad_messy[12:25].
      lower().replace("@","a"), "|","age:",Ad_messy[-3:])


#Search: startswith(), endswith(), find(), in


#Searching 

Phone = "+48-176-12345"
print(Phone.startswith("+48")) # checking if this start with the value indicate in the function
print(Phone.find("-")) #count how many times the - is in the text
url = "http://api.company.com/v1/data"
print("/api" in url)     #check if the URL is an API endpoint

#using find to have a dynamic [?:?] index

Phone1 = "+48-176-12345"
Phone2 = "0048-176-12345"  # I'm removing the country code dynamically
print(Phone1[Phone1.find('-')+1:]) #it's find the first "-"" to start operating

#Validation: isalpho(), isnumeric()

Country = "12334" #if it has decimal like 3.03 it is not detected as alpha or numeric
print(Country.isalpha()) #Check if the string has only letters 
print(Country.isnumeric()) #Check if the string has only numbers
