import csv

rows = [
    ['order_id', 'customer', 'amount','country'],
    [1,'Alan',200,'RD'],
    [2,'Luis',123.5,'IN'],
    [3,'Keilin',150,'US']
]

with open('order.csv','w',newline='') as f:
    writer = csv.writer(f)
    writer.writerows(rows)