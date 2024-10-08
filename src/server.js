const express = require("express")
const app = express()
const port = process.env.PORT || 3000

app.use(express.static("./src"))

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html")
})

app.get('/version', (_req, res) => {
  const version = process.env.APP_IMAGE_VERSION || 'NOT_DEFINED'

  res.json({ version })
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`)
})
