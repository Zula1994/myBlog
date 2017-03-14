var Sequelize = require('sequelize');
var sequlizeConfig = require('./sequelize');
var test = sequlizeConfig.define('test',{
	"id": {type: Sequelize.INTEGER(10), autoIncrement: true, primaryKey: true, unique: true},
	"username": {type: Sequelize.STRING(100), allowNull: false},
	"password": {type: Sequelize.STRING(100), allowNull: false}
}, {
	freezeTableName: true,//默认false修改表名为复数，true不修改表名，与数据库同步
	tableName: "test",
	timestamps: false
});
module.exports = test;