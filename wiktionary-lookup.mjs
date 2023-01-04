//npm install clipboardy child_process


import { exec } from 'child_process';
import clipboardy from 'clipboardy';
// const { exec } = require('child_process');
// const clipboardy = require('clipboardy');

async function main() {
  // Get the text from the clipboard
  const clipboard = await clipboardy.read();

  // Split the clipboard text into an array of words
  const words = clipboard.split(/[\s\p]/);

  // Loop through each word and open a Wiktionary page for it
  for (const word of words) {
    exec(`open "https://en.wiktionary.org/wiki/${word}"`, (error, stdout, stderr) => {
      if (error || stderr) {
        // If the page cannot be found, try again with the lowercase word
        exec(`open "https://en.wiktionary.org/wiki/${word.toLowerCase()}"`);
      }
    });
  }
}

main();

