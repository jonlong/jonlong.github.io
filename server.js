var config = require('./config');
var express = require('express');
var port = process.env.PORT || config.port;

/**
 * App.
 */

var app = express();

/**
 * Static.
 */

app.use(express.static(__dirname + '/build'));

/**
 * Listen.
 */

app.listen(port, function(){
  console.log('Server running at http://localhost:' + port + '');
});