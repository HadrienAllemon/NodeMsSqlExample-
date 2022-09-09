var express = require('express');

var indexRouter = require('./routes/movies');
var directors = require('./routes/directors');
var genres = require('./routes/genres');

var app = express();
app.use(express.json()); // Needed to parse json bodies

app.use('/directors', directors); // A specific path (GET REQUEST)
app.use('/genres',genres) // A complex path. see /routes/genres/index for more details
app.use('/movies', indexRouter); // A complex path with different requests (get or post to add a movie)

// catch 404 and forward to error handler
app.use('*',function(req, res, next) { // if any other path is specified (if no path is specified)
 res.status(404).send("Could not find this route");
});

app.listen(3200, ()=>console.log("App listening to port 3200"));


module.exports = app;
