#Conditional_statements: standalone if, Else, Elif, Nested if, Independent if, inline if(Ternaty), Match case

# statement if:

score = int(input("Enter de number: ")) #input() siempre devuelve un str (texto), aunque escribas un número
Submitted_project = True
if score >= 90:
    if Submitted_project: #Python evaluates bool directly avoid explicit compatisons(== True or == Flase)
        print("A+")
    else:
        print("A")    
elif score >=80:
    print("B")
elif score >=70:
    print("C")        
else:
    print("F")    

#  inline statement
print('A' if score >=90 else "F")

grade = 'A' if score >=90 else "b" if score >80 else "f"

print("This one is using the var grade: ",grade)


# Match case: Evaluate a value against multiple values runs the code of the first match

# convert the full country names into 2-letter abbreviations 

Country = "Germany"

if Country == "Republica Dominica":
    print("RD")
elif Country == "Egypt":
    print("EG")
elif Country == "Germany":
    print("DE")        
else:
    print("Unknown Country") 

match Country:
    case "Republica Dominica":
        print("RD")
    case "Egypt":
        print("EG")   
    case "Germany":
        print("DE")
    case _:
        print("unkown country")