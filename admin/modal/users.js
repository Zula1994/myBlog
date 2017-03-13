var Sequelize = require('sequelize');
var seqConfig = require('./sequelize');
var users;
users = seqConfig.define("users", {
	"id": {type: Sequelize.INTEGER(10), autoIncrement: true, primaryKey: true, unique: true},
	"username": {type: Sequelize.STRING(100), allowNull: false, defaultValue: ' '},
	"nickname": {type: Sequelize.STRING(100), allowNull: false, unique: true, defaultValue: ' '},
	"password": {type: Sequelize.STRING(100), allowNull: false, defaultValue: ' '},
	"email": {type: Sequelize.STRING(100), allowNull: false, defaultValue: '邮箱'},
	"created_at": {type: Sequelize.STRING(10), allowNull: false, defaultValue: '0'},
	"updated_at": {type: Sequelize.STRING(10), allowNull: false, defaultValue: '0'},
	"login_count": {type: Sequelize.INTEGER(8), allowNull: false, defaultValue: '1'},
	"header_pic": {type: Sequelize.STRING(100), allowNull: false, defaultValue: ' '}
}, {
	freezeTableName: true,//默认false修改表名为复数，true不修改表名，与数据库同步
	tableName: "admin_user",
	timestamps: false
});
module.exports = users;