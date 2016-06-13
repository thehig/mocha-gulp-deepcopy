deepcopy = require('deepcopy')
expect = require('chai').expect
fixture = undefined
p = (m) -> console.log(JSON.stringify(m, null, 4))

describe "Compare copy vs deepcopy", ->
	copy = undefined
	before -> fixture = require('./product_one.fixture.json')
	beforeEach -> copy = deepcopy(fixture)

	it "fixture should not be null", -> 
		p fixture
		expect(fixture).to.not.be.null
	it "copy should not be null", -> 
		p copy
		expect(copy).to.not.be.null
