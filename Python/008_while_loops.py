# While loop: Repeats a block of code over and over as long as condition is true

print("-" *40,"While condition")    

i = 1
while i <= 10:
    print(f'La vuelta esta en el step:{i}')
    i +=1

print("-" *40,"While True")        

while True:
    answer = input("Alan is the Best, Do yoy agree? (yes/no)")
    if answer.lower().strip() == 'yes': # aqui solucione el problema de case sensitive, espacios en blancos ahah
        break
print('Thank you')


print("-" *40,"While: 3 Attempts")

attempts = 0
while attempts < 3:
    answer = input("Alan is the Best, Do yoy agree? (yes/no)")
    if answer.lower().strip() == 'yes':
        print("Glad we are on the same page")
        break
    attempts +=1
else:    
    print('3 strikes. you are out')    