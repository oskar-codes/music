/*
 * POST-PROCESSING PIPELINE
 * 
 * Takes an html file from arguments and
 * outputs the processed html to stdout
 * 
 */

import { readFile } from 'fs/promises';
import parseArgs from 'args-parser';

function noop(html) {
  return html;
}

(async () => {

  const args = parseArgs(process.argv);

  const result = await readFile(args.file)
  const html = result.toString();

  const processed = noop(html);

  console.log(processed);

})();
