print('-'*40, 'Functions')

def make_coffee():
    print('start machine')  
    print('Make coffee')    
make_coffee()    # para que el print se imprima tengo que llamar la funcion aqui
make_coffee()   # para imprimir otra vez solo la llama otra vez

print('-'*40, 'Parameters & Arguments')
print('-'*40, 'hardcoded')
def clean_name(): # this is a hardcoded because it always cleans the same value
    name = 'MariA'
    print(name.strip().lower())
clean_name()  
clean_name()  


print('-'*40, 'Pass data in')

def clean_name(name): 

    print(name.strip().lower())
clean_name('aLanAA') 
clean_name('cArLos') 

print('-'*40, 'function with local variable')

def nombre_limpio(nombre): #parameter
    limpio = nombre.strip().lower() #local variable
    print('raw:', nombre)
    print('limpio', limpio)

nombre_limpio('aLaN ')    


print('-'*40, 'function with lmultiple parameters')

def to_clean_name(first_name, last_name, country='n/a'): # the N/A leave the value as default
    first = first_name.strip().lower()
    last = last_name.strip().lower()
    full_name = first + " " + last
    print(full_name, 'From', country)
#position Arguments
to_clean_name('AlaN','gOmERa','DR')
#keyword arguments 
to_clean_name(first_name='AlaN',last_name='gOmERa', country='DR')
#mix argument 
to_clean_name('AlaN',last_name='gOmERa', country='DR')

print('-'*40, 'function with Return')

def good_name(name):
    good_one = name.strip().lower()
    return good_one
cln_name = good_name ('AAlAnn')
print(cln_name)
