/*
 * PRE-PROCESSING PIPELINE
 * 
 * Takes a markdown file from arguments and
 * outputs the processed markdown to stdout
 * 
 */

import { readFile } from 'fs/promises';
import parseArgs from 'args-parser';
import { pipe } from './pipeline.js';

function noop(markdown) {
  return markdown;
}

(async () => {
  
  const args = parseArgs(process.argv);

  const result = await readFile(args.file)
  const markdown = result.toString();

  const pipeline = pipe(noop);

  const processed = pipeline.run(markdown);
  console.log(processed);

})();
