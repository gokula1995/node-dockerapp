const http = require("http");

const server = http.createServer((req, res) => {
    res.end("Hello!!");
});

server.listen(8080, () => {
    console.log("Hello, I am running on port 8080");
})
