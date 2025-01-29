#!/usr/bin/node

const num = parseInt(process.argv[2], 10);

if (isNaN(num)) {
  console.log('Missing number of occurrences');
} else {
  const lines = [];
  for (let i = 0; i < num; i++) {
    lines.push('C is fun');
  }
  if (lines.length > 0) {
    console.log(lines.join('\n'));
  }
}
