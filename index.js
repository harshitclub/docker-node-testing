const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.json({ message: "hello world! \nDocker testing done!", status: 200 });
});

app.listen(3000, () => {
  console.log(`server running on port: 3000`);
});
