var http = require('http');
var fs = require('fs');
var path = require('path');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  var file = path.resolve(__dirname, 'index.html');

  fs.readFile(file, function (err, data) {
    if (err) throw err;
      res.write(data);
      res.end();
  });
}).listen(80);

console.log('Server running');
