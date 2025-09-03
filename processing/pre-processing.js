/*
 * PRE-PROCESSING PIPELINE
 * 
 * Takes a markdown file from arguments and
 * outputs the processed markdown to stdout
 * 
 */

import { readFile } from 'fs/promises';
import parseArgs from 'args-parser';

function noop(markdown) {
  return markdown;
}

(async () => {
  
  const args = parseArgs(process.argv);

  const result = await readFile(args.file)
  const markdown = result.toString();

  const processed = noop(markdown);

  console.log(processed);

})();
