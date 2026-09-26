import pandas as pd 

df = pd.DataFrame({
    "order_id":range(1,11),
    "amount":[100,None,250,300,None,180,90,400,None,210],
    "country":["US","IN","US","IN","DR","HON","CSC","US","DR","US"] 
}

)

df.to_csv("pd_dirty_orders.csv", index=False)