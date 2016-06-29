var http = require('http');
var express = require('express');
var app = express();

function serve(ip, port)
{
        http.createServer(function (req, res) {
            res.writeHead(200, {'Content-Type': 'text/plain'});
            res.write(JSON.stringify(req.headers));
            res.end("\nHere's your node: "+ip+":"+port+"\n");
        }).listen(port, ip);
        console.log('Server running at http://'+ip+':'+port+'/');
}

// Create servers based on cores 
