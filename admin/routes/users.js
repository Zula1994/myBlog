const router = require('koa-router')();
var user = require('../controllers/test');
// const add = require('./article/add_article');
router.post('/add', user['add_post'])
module.exports = router;