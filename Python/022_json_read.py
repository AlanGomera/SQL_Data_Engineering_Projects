import json 

with open('orders.json','r') as f:
    data = json.load(f)

for order in data['orders']:
    print(order)    