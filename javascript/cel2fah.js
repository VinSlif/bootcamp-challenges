var readlineSync = require('readline-sync');

var degrees = readlineSync.question('Enter degrees in Celsius: ');
console.log('It is ' + ((Number(degrees) * 1.8) + 32) + '!');