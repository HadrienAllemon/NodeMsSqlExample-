const movie = require('express').Router();
const allmovies = require('./allmovies');
const insertmovie = require('./insertmovie');

movie.get('/', allmovies); // in case it's a get request
movie.post('/', insertmovie); // in case it's a post request

module.exports = movie;