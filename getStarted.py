import pandas as pd

dataset = pd.read_csv("DataHugoDubois.csv", header=0, index_col=0, delimiter=",")
dataset["price"] = dataset["price"].map(lambda x: x.lstrip('€'))
dataset["price"] = dataset["price"].str.replace(",",".")
dataset["price"] = pd.to_numeric(dataset["price"])

corelation = dataset[["color","price"]].groupby("color").mean()

print(corelation)

most_expensive_color = corelation[corelation["price"] == corelation["price"].max()]
cheapest_color = corelation[corelation["price"] == corelation["price"].min()]


