d3.select("body").style("background-color", "pink");

values = [4, 8, 15, 16, 23, 42];
stat = [d3.min(values), d3.median(values), d3.max(values)];

const dataset = {
"course": 411,
"courseName": "Software in Telecommunications",
"releaseYear": 2021,
"courseActive": true,
"droppedStudents": null,
"date": 20210218,
"someData": [[11,2], [22, 4], [33, 1], [44,5]],
"scores": {"a":77, "b":46, "c":91}
}

newValue = dataset["someData"]

d3.select("body")
  .selectAll("p")
  .data(newValue)
  .enter().append("p")
    .text(function(d) { return "I’m number " + d + "!"; });


