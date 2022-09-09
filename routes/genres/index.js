const genres = require('express').Router()
const allgrenres = require('./allgenres');
const moviesbygenres = require('./moviesbygenres');

genres.get("/moviesbygenres", moviesbygenres) // upon getting /genres/moviesbygenres
genres.get("/", allgrenres) // upon getting /genres

module.exports = genres;