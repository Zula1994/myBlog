var Users = require('../modal/users');
var users = {};
module.exports = users;
users.add_post = function* (){
	this.body = this.request.body
	// var str = this.request.body.str;
	// var obj = JSON.parse(str);
	// obj.password = MD5Tool.MD5(obj.password);
	// yield Admin.create(obj);
	// yield this.body ='111'

};