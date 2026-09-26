#Data structures: list[], tuple(), set{}, dict{}

print('-'*40, 'Create Lists')

first_list =['a','b','a']
print(first_list)
print(type(first_list))

# converts an iterable (sequence) into a list
print('-'*40, 'converts an iterable (sequence) into a list')
letters = list('ALAN')
print(letters)


print('-'*40, 'Nested lists Matrix')

mixed_matrix =[['a','b','c'],
               [1,2,3,4],
               [True, False]
]
print(mixed_matrix)

Full_metrix = [['a','b','c'],
               ['d','e','f'],
               ['g','h','i']
]
print(Full_metrix)
print(Full_metrix[0][0]) # this is to get the "a" from the metrix

print('-'*40, 'How to access & read')
list_to_access = ['a','b','c','d']
print(list_to_access)
print(list_to_access[1])
print(list_to_access[-1])

print('-'*40, 'slicing') # Use index to get 1 single item and slicing to get multiple items
print('Slices_1:',list_to_access[0])
print('Slices_2:',list_to_access[-1])
print('Slices_3:',list_to_access[-2])
print('Slices_4:',list_to_access[:2])
print('Slices_5:',list_to_access[2:])
print('Slices_6:',list_to_access[:])

print('-'*40, 'Unpacking')

person = ['ALAN', 29, 'Data engineer', 'Dominicano']
#name = person[0]
#age = person[1]
#role = person[2]
#country = person[3]

name, age,role,country = person #instead of using index
print('The name is:',name,'and the age:',age) # in this printe i can select whataver i want


print('-'*40, 'Rest Collerctor(Asterisk)')


numbers = [1,5,6,7,3]
print('Max:', max(numbers))
print('Min:', min(numbers))
print('sum:', sum(numbers))
print('Length:', len(numbers))

print('all:', all(numbers))
print('all:', all([1,7,0])) # this is getting False couse zero is considered as none value


print('-'*40, 'How to change list')

#Adding items
# .append() add the new value to the end of the list

list_to_change =['a','b','c']
list_to_change.append('Added with the append')
list_to_change.insert(0,'added with insert') #We have to specify the index where will it be inserted
#list_to_change.clear() to delete everything
list_to_change.remove('c')
list_to_change.pop(1) #with pop we can remove by posotion, like 0,1,2,3 and so on 
#update item overwriting
list_to_change[1] = 'chenge the b for this haha'
print(list_to_change)


print('-'*40, 'sorting lists')
List_to_sort = [8,3,2,1,6,8]
print(List_to_sort)
List_to_sort.sort(reverse=True)
print(List_to_sort)

print('-'*40, 'Copying') # se usa para hacer test, con el metodo .copy() para que no quede como teferencia
# hay otro copy: deepcopy() se usa para estar 100% segura y hay que inportarle asi import copy
original_list = ['a','b','c']
copy_list = original_list.copy()
original_list.pop()

print('original:', original_list)
print('copy', copy_list)


print('-'*40, 'combining lists') 

letras = ['a','b','c','d']
numeros = [1,2,3]
comb = letras + numeros
numeros.extend(letras)
print(comb)
print(numeros)

print('-'*40, 'using zip') 

# this help us to combine 2 list with each item 

ids = [101,102,103]
names =['ALAN','Eduardo','sLuis']
print(list(zip(ids, names)))

print('-'*40, 'Funcions lambda') 

multiple = lambda x: x*2 # stores a lambda function which doubles a number
print(multiple(5))


# remove all prices lower than 100
prices = [120,95,320,23,323]
print(list(filter(lambda p:p >= 100, prices))) # La estructura de lambda es PARAMETRO: EXPRESION

# filter by index 1 which is the score 

students = [['Maria',85],
            ['ALAN',100],
            ['Luis',65]]
print(list(filter(lambda row: row[1] >70, students)))

# pint student where the name start with M
print(list(filter(lambda row: row[0].startswith('M') , students)))


print('-'*40, 'Dict')
# the dict is no indexed, you can access values by using their keys
My_dict = {
    'Alan':29,
    'Luis':27,
    'Carlos':30
}

print(My_dict)
print(My_dict['Alan'])


print('-'*40, 'Special Methods for dict')

user ={'id':1,'age':29,'city':'Sant. Dom'}
#Access
print(user.get('age')) # this is to get the value
#checks 
print('age' in user) # to check if this is in the dict
print('name' not in user)
#view objects 
print(user.keys())
print(user.values())
print(user.items())