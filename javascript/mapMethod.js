'use strict';

var _ = {
	// Implements:
	// https://lodash.com/docs#map
	map: (array, callback) => {
		let arr = [];
		for (let i = 0; i < array.length; i++) {
			arr.push(callback(array[i]));
		}
		return arr;
	}
}

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
	return 10 * value;
}
const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);