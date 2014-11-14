jade = require 'jade'
express = require 'express'

app = do express;

app.use(express.static(__dirname + '/dist'));

app.set('view engine','jade');

app.engine '.html', jade.__express
app.set('views', __dirname + '/dist');

app.get '/', (req, res) ->
	    res.render('index.html');


app.listen 8080

