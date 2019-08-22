// Problem 1: remove first and last character
// https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0/train/javascript
function removeChar(str) {
	let len = str.length;
	str.substring(1, len);
	return str.substring(0, len - 2);
};

// Problem 2: find opposite number
// https://www.codewars.com/kata/56dec885c54a926dcd001095/train/javascript
function opposite(number) {
	return number * -1;
}

// Problem 3: county monkeys (populate an array)
// https://www.codewars.com/kata/56f69d9f9400f508fb000ba7/train/javascript
function monkeyCount(n) {
	var arr = [];
	for (let i = 1; i <= n; i++) {
		arr.push(i);
	}
	return arr;
}

// Probelm 4: is a number prime?
// https://www.codewars.com/kata/5262119038c0985a5b00029f/train/javascript
function isPrime(num) {
	if (num < 0) return false;
	for (var i = 2; i < num; i++)
		if (num % i === 0) return false;
	return num !== 1 && num !== 0;
}

// Problem 5: determines if an 8x8 chest board location is white or black
// https://www.codewars.com/kata/563319974612f4fa3f0000e0/train/javascript
function mineColor(line, number) {
	if (line == 'a' || line == 'c' || line == 'e' || line == 'g') {
		return (number % 2 == 1) ? 'black' : 'white';
	} else {
		return (number % 2 == 0) ? 'black' : 'white';
	}
}

// Problem 6: figure which vowel is missing from a string
// https://www.codewars.com/kata/56414fdc6488ee99db00002c/train/javascript
function absentVowel(x) {
	const vowels = ['a', 'e', 'i', 'o', 'u'];
	for (let i = 0; i < vowels.length; i++) {
		if (x.indexOf(vowels[i]) == -1) return i;
	}
}

// Problem 7: turns all even indiced of string to uppercase and odd to lowercase
// https://www.codewars.com/kata/52b757663a95b11b3d00062d/train/javascript
function toWeirdCase(string) {
	let strArr = string.split(' ');
	// Checks if only given single word
	if (typeof strArr == 'string') {
		strArr = [];
		strArr.push(string);
	}

	for (let i = 0; i < strArr.length; i++) {
		let str = '';
		for (let j = 0; j < strArr[i].length; j++) {
			str += (j % 2 == 0 ? strArr[i][j].toUpperCase() : strArr[i][j].toLowerCase());
		}
		strArr[i] = str;
	}
	return strArr.join(' ');
}

// Problem 8: reverses words in a string that are 5+ characters long
// https://www.codewars.com/kata/5264d2b162488dc400000001/train/javascript
function spinWords(string) {
	let strArr = string.split(' ');
	// Checks if only given single word
	if (typeof strArr == 'string') {
		strArr = [];
		strArr.push(string);
	}

	for (let i = 0; i < strArr.length; i++) {
		if (strArr[i].length >= 5) strArr[i] = reverseString(strArr[i]);
	}
	return strArr.join(' ');
}

function reverseString(s) {
	return s.split('').reverse().join('');
}

// Problem 9: find the longest section of a string that is a palindrome
// https://www.codewars.com/kata/54bb6f887e5a80180900046b/train/javascript
function longestPalindrome(s) {
	let len = s.length, longestLen = 1;

	// No need to check if this short
	if (len == 0 || len == 1) return len;

	for (let i = 0; i < len; i++) {
		for (let j = len; j > i; j--) {
			// No need to check shorter lengths
			if (Math.abs(i - j) <= longestLen) continue;

			let sub = s.substring(i, j);
			if (checkPalindrome(sub) && sub.length > longestLen) longestLen = sub.length;
		}
	}
	return longestLen;
}

function checkPalindrome(str) {
	return str == reverseString(str);
}