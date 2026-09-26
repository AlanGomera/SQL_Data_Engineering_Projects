orders = [
    {'order_id':1,'Country':'US'},
    {'order_id':2,'Country':'DR'},
    {'order_id':3,'Country':'DR'}
]

is_order = []

for order in orders:
    if order['Country'] == 'DR': # here we are filter the value igual to DR
        is_order.append(order)

print(is_order)        