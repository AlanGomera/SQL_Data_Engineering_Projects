import pandas as pd

df = pd.read_csv("pd_dirty_orders.csv")
print(df)

df['amount'] = df['amount'].fillna(0)
print(df)

# aqui estoy haciendo un group by
country_summary = (
    df.groupby('country')
    .agg(
        total_orders=("order_id","count"),
        total_amount=('amount',"sum")
    )
)

print(country_summary)