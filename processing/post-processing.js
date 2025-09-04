/*
 * POST-PROCESSING PIPELINE
 * 
 * Takes an html file from arguments and
 * outputs the processed html to stdout
 * 
 */

import { readFile } from 'fs/promises';
import parseArgs from 'args-parser';
import { pipe } from './pipeline.js';
import { JSDOM } from 'jsdom';

function idsOnHeaders(html) {
  const frag = JSDOM.fragment(`<div>${html}</div>`);
  const headers = frag.querySelectorAll('h1,h2,h3,h4,h5,h6');
  for (const header of headers) {
    header.id = header.textContent.toLowerCase().replace(/ /g, '-');
  }
  return frag.firstChild.innerHTML;
}

function noop(html) {
  return html;
}

(async () => {

  const args = parseArgs(process.argv);

  const result = await readFile(args.file)
  const html = result.toString();

  const pipeline = pipe(idsOnHeaders);

  const processed = pipeline.run(html);
  console.log(processed);

})();
