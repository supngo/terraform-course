var express = require('express');
var app = express();

app.get('/', function(req,res){
	res.send('Hello World');
});

var server = app.listen(3000, function(){
	var host = server.address().address;
	var port = server.address().port;
	console.log('Exmaple app listening at http://%s:%s, host, port');
});

//var http = require('http');
//
//var server = http.createServer(function(req, res){
//	res.writeHead(200);
//	res.end('Hello World');
//});
//server.listen(8080);