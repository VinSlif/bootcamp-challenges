var readlineSync = require('readline-sync');

function getOrdinal(n) {
	n = Number(n);

	if (n % 100 > 10 && n % 100 < 20) return n + 'th'

	switch (n % 10) {
		case 1:
			return n + 'st';
		case 2:
			return n + 'nd';
		case 3:
			return n + 'rd';
		default:
			return n + 'th';
	}
}

var digit = readlineSync.question("Enter a digit: ");

console.log(getOrdinal(digit));