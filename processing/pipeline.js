
/**
 * Returns a new pipeline with the given operation
 * @param {(input: string) => string} operation 
 * @returns {Pipeline}
 */
export function pipe(operation) {
  return new Pipeline(operation);
}

class Pipeline {
  constructor(operation) {
    this.operation = operation;
  }

  /**
   * Runs the pipeline on the given input
   * @param {string} input 
   * @returns {string}
   */
  run(input) {
    return this.operation(input);
  }

  /**
   * Combines this pipeline and another operation
   * @param {(input: string) => string} otherOperation 
   * @returns {Pipeline}
   */
  andThen(otherOperation) {
    return new Pipeline(input => {
      return otherOperation(this.operation(input))
    });
  }
}