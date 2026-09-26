try:
    with open("missing_file.csv","r") as f:
        data = f.read()
except FileExistsError:
    with open('MISSING_FILE.csv',"r") as f:
        data = f.read()
        print("Filenot Found: Pipeline connot proceed")    
finally:
    print("cleanup complete")     


    # verdadero ejemplo de excepciones 

try:
    amount = '100'
    total = amount + 50
except TypeError:
    amount = int('100')
    total = amount + 50
print(total)    
