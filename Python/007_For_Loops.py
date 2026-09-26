#For loops: Statements, Nested Loops, Break, continue, pass, Else
# While Loops: While Conditions, While True


for i in (1,2,3,4,5):
    print("Round:",i) # print created by me ahahah
    print(f"Round using F: {i}")

print("-" *40)

items = (1,2,3,4,5)
for item in items:
    print(f"Round item: {item}")    

print("-" *40)

items_v2 = "python "
for item in items_v2:
    print(f"Round item: {item}") 

print("-" *40)

for item in range(1,10,2): # we can add the start argument into the range to make it does not start in 0 and added a step
    print(f"Round of range: {item}") 

print("-" *40)
# Real world applications 

scores = [80, 50, 60 ,75] # Aquí estamos creando una lista llamada scores. contiene 4 valores posiciones 0,1,2,3
total = 0 #Creamos una variable para almacenar el total y la iniciamos en 0 y vamos a ir sumando cada score a esta variable.
for score in scores: #Iniciamos el for Por cada elemento que exista dentro de scores, guarda temporalmente ese valor en la variable score
#Es importante entender que score no es la lista completa. Es solamente el valor actual que Python está procesando.
    total +=score # Sumamos el score al total Esta es una forma abreviada de escribir: total = total + score
    print("Current total: ", total)
print("Final toral:", total)

print("-" *40)

# We use for loops to transform data like cleaning data before processing

files = [' Report.csv ','DATA.csv ',' fianl.TXT'] # hera ara inconsistent casing & unnecessary speces
for file in files:
    file = file.strip().lower().replace('txt','csv') # removing speces 
    print(f'Processing {file}')

print("-" *40)
print("#Python Challenge\n print the 7-times table from 1 to 10 using a for loop")    

numbers = [1,2,3,4,5,6,7,8,9,10]
times = 0
seven = 7
for number in numbers:
    times += number
    print(f"La tabla del 7 * {number} = {seven*number}") 


# Break statement
print("-" *40,"Break statement")

# the loops breks when the value es blank 
names = ['Alan','Luis',"",'Daniel']
for name in names:
    if name == "":
        print("Empty value detected")
        break
    print(f"Name: {name}")


#continue statement, it use to skip one loop cycle without stopping the loop
print("-" *40,"continue statement")    


names = ['Alan','Luis',"",'Daniel']
for name in names:
    if name == "":
        print("Empty value detected")
        continue
    print(f"Name: {name}")

#pass statement: it is a placeholder where nothing happens

print("-" *40,"pass statement")    
names = ['Alan','Luis',"",'Daniel']
for name in names:
    if name == "":
        print("Empty value detected")
        pass    # it is not stopping anything, just running like there is not any keyword
    print(f"Name: {name}")

# Real world applications 

print("-" *40,"Real world applications ")

# Loop through a list of days and pint only the working days, skipping the weekends

Days = ['Monday','Tuesday','Wednesday','thursday','Friday','Satuday','Sunday']
for day in Days:
    if day in('Satuday','Sunday'):  
        continue
    print(f'Weekdays: {day}')


print("-" *40,"Real world applications security attack ")
# precent data ingestion for external user

Emails =[
    'Data@gmail.com',
    'Alan@outlook.com',
    'DROP TABLE USERS;',
    'maria@mail.com'
]    

for email in Emails:
    if ";" in email:
        print('SQL injection hacker attack')
        break
    print(f"Precessing emailL {email}")



print("-" *40,"Else + break   ")
# Else + break     
# checking if all file are CSV

files = ['AHT_raw.csv',
         'AHT_Report.csv',
         'CSAT.csv',
         'car.csv']
for file in files:
    if not file.endswith('.csv'):
        print(file, 'Is not a csv')
        break # this break is to avoid the else if it meet 
else:
    print('All file are csv')    


print("-" *40,"Nested loop") 
# uses cases 

#La razón del orden está en que el for interno termina todas 
#sus vueltas antes de que el for externo pase al siguiente color.
colors = ['red','blue','green']
sizes = ['L','M','S']
for color in colors:
    for size in sizes:
        print(f'{color} - Size {size}')
