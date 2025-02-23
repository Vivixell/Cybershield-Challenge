import express from "express";

const app = express();

app.use("/", (req, res) => {
  res.status(200).send("Hello Devops!!!")
});


app.listen(4000, () => {
  console.log("server is listening on port 4000");
});
