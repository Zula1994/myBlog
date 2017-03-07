const router = require('koa-router')();
router.get('/',function *(next){
	this.body = 'hello article';
})
module.exports = router;
