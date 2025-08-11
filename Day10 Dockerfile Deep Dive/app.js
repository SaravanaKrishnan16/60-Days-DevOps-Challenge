const http = require('http');

const PORT = process.env.APP_PORT || 3000;
const MESSAGE = process.env.MESSAGE || 'Hello from Docker!';

const server = http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end(`${MESSAGE} Running on port ${PORT}\n`);
});

server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
