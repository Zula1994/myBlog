const router = require('koa-router')();
const add = require('./article/add_article');
router.get('/', function *(next) {
	this.body = 'hello article';
})
router.get('/add', add);
module.exports = router;