var sql = require("mssql");

module.exports = (req, res) => {
  var config = {
    user: 'user',
    password: 'password',
    server: 'server',
    database: 'Movies',
    trustServerCertificate: true
  };

  // connect to your database
  sql.connect(config, function (err) {

    if (err) {
      console.log(err);
      res.status(500).send(err);
    }

    // create Request object
    var request = new sql.Request();

    // query to the database and get the records
    request.query('select * from Movies', function (errQuery, response) {
      if (errQuery) {
        console.log(errQuery);
        res.status(500).send(errQuery);
      }

      // send records as a response . You can specify the status
      res.status(200).send({ data: response.recordset });

    });
  });
}


