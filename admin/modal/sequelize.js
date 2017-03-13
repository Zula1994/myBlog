var Sequelize = require('sequelize');
var config = require('../config');
module.exports = sequelizeDB = new Sequelize(
	config.mysql.database,
	config.mysql.user,
	config.mysql.password
)