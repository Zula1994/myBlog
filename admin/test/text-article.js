var app = require('./../app');
var request = require('supertest').agent(app.listen());

describe('article', function () {
	describe('get /', function (done) {
		it('should see title ', function (done) {
			request
				.get('/')
				.expect(200, function (err, res) {
					if (err) return done(err);
					done();
				});
		})
	})
})