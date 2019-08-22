'use strict';

var _ = {
	// Implements:
	// https://lodash.com/docs#join
	join: (array, separator = ',') => {
		let str = array[0];
		for (let i = 1; i < array.length; i++) {
			str += separator + array[i];
		}
		return str;
	}
}


const value = _.join(['hello', 'goodbye',], ', ')

console.log(value);