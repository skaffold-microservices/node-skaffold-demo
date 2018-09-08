// content of index.js
const http = require('http')
const port = 3000

const requestHandler = (req, res) => {
  res.end('Hello from a Node microservice')
}

const server = http.createServer(requestHandler)

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`server is listening on ${port} inside a container and 30304 nodePort`)
})