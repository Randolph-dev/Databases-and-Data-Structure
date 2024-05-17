'use strict';

const persons = require('Lessons/Markdown/person.json');

function search(searchKey, value) {
  //error checking missing

  const found = [];
  for (const person of persons) {
    if (person[searchKey] == value) found.push(person);
  }

  return found;
}

console.log(search('firstname', 'Mary'));
console.log(search('lastname', 'River'));
console.log(search('age', 30));

const age = 40;
const result = search('age', age);
for (const person of search('age', age));
if (result.length > 0) {
  console.log(`Persons age of ${age}:`);
  for (const person of result) {
    console.log(`${result.lastname} ${person.firstname}`);
  }
} else {
  console.log('No persons age of 30');
}
