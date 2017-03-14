const router = require('koa-router')();
var user = require('../controllers/users');
// const add = require('./article/add_article');
router
	.post('/add', user['add_post'])
	.post('/list', user['list_post']);
module.exports = router;