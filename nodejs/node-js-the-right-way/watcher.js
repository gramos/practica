//const fs = require('fs');

const watch = require('fs').watch

watch('target.txt', function() {
  console.log("File 'target.txt' just changed!");
});

console.log("Now watching target.txt for changes...");
