#!/usr/bin/node

const lines = ['C is fun', 'Python is cool', 'JavaScript is amazing'];
let result = lines[0];
for (let i = 1; i < lines.length; i++) {
  result += '\n' + lines[i];
}
console.log(result);
