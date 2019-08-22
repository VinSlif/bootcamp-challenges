var readlineSync = require('readline-sync');


var n = readlineSync.question("How many digits of FooBar shall I produce: ");

for (let i = 1; i <= Number(n); i++) {
	let outStr = '';
	if (i % 3 == 0) outStr += 'Foo';

	if (i % 5 == 0) outStr += 'Bar';

	if (outStr == '') outStr += i.toString();

	console.log(outStr);
}