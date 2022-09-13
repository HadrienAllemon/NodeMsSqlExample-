var sql = require("mssql");

// This one is asynchronous for more visibility
module.exports = async (req, res) => {
    var config = {
        user: 'user',
        password: 'password',
        server: 'server',
        database: 'Movies',
        trustServerCertificate: true
    };

    // connect to your database
    await sql.connect(config)

    // create Request object
    var request = new sql.Request();

    // Get the data from the body of the request
    var movieToInsert = req.body;

    // Several ways to make inserts query, this is one (though it's tedious)
    // Insert the records
    const results = await request
    .input('p1', sql.NVarChar(255), movieToInsert.Title)
    .input('p2', sql.Int, movieToInsert.DirectorId)
    .input('p3', sql.Int, movieToInsert.GenreId)
    .input('p4', sql.Date, movieToInsert.ReleaseDate)
    .input('p5', sql.Int, movieToInsert.Duration)
    .query('insert into Movies (Title, DirectorId, GenreId, ReleaseDate, Duration) values (@p1, @p2, @p3, @p4, @p5)')
    .catch(error => {
        console.log(error);
        res.status(500).send(error);
    });
    console.log(results);
    if (!res.headersSent)res.status(200).send(results);
    

}


