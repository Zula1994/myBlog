var Users = require('../modal/test');
var users = {};
module.exports = users;
users.add_post = function*(next) {
	var body = this.request.body;
	var result = yield Users.create(body);
	this.body = {
		"head": {
			"code": "0000",
			"msg": "添加成功"
		}
	}

};
users.list_post = function *() {
	Users.findAll()

}
users.delete_post = function *() {
}
users.updated_post = function *() {

}


