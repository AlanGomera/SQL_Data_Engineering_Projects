import csv
 
with open('order.csv','r') as f:
    reader = csv.reader(f)
    for row in reader:
        print(row)