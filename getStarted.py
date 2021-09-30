import pandas as pd

dataset = pd.read_csv("DataHugoPires.csv", header=0, index_col=0, delimiter=",")
dataset["price"] = dataset["price"].str.replace("€","")
dataset["price"] = dataset["price"].str.replace(",",".")
dataset["price"] = pd.to_numeric(dataset["price"])

corelation = dataset[["color","price"]].groupby("color").mean()

print(corelation,"\n")

most_expensive_color = corelation[corelation["price"] == corelation["price"].max()]
cheapest_color = corelation[corelation["price"] == corelation["price"].min()]

print("On average the most expensive color is :",most_expensive_color,"\n")
print("On average the cheapest color is :",cheapest_color,"\n")
