import json
import matplotlib.pyplot as plt
import numpy as np

JSON_Telecom = '''

{
"course": 411,
"courseName": "Software in Telecommunications",
"releaseYear": 2021,
"courseActive": true,
"droppedStudents": null,
"date": 20210218,
"someData": [[11,2], [22, 4], [33, 1], [44,5]],
"scores": {"a":77, "b":46, "c":91}
}

'''

data = json.loads(JSON_Telecom)

somedata = data.get("someData")
L = len(somedata)

plt.figure(data.get("course"))
plt.title(data.get("courseName"))
for i in range(L):
    x = somedata[i][0]
    y = somedata[i][1]
    plt.plot(y,x,"+r")




