raw_api_response = {  #Aquí estás simulando la respuesta que recibirías de una API.
    'order_id': 101,
    'customer':{   #nested dictionary
        'id':'C001',
        'name':'Alan'
    },
    'items':[   # es una lista (list) que contiene dictionaries.
    {'sku':'A1', 'price':100}, #Dictionary 1
    {'sku':'b2', 'price':50}   #Dictionary 2
    ],
    'country': "us"
}   
'''Aquí estás creando otro dictionary.
Pero esta vez no estás guardando toda la información original.
Estás seleccionando y transformando solamente los campos que te interesan'''
strutured_orders = {
    'order_id': raw_api_response['order_id'],
    'customer_id': raw_api_response['customer']['id'],
    'customer_name': raw_api_response['customer']['name'],
    'total_amount':sum(item['price'] for item in raw_api_response['items']),
    'country':raw_api_response['country']
}

print(strutured_orders)