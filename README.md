Algorithms for Humans
==============================================

_hello_

## Getting Started

For the time being, the `Makefile` defines sensible top-level tasks that we wish
this repository to handle. The `main.py` file parses a set of command line
options, which enable behavior like training new models, evaluating their
performance, persisting to and loading from disk for predictions.

Running `make` in the project directory will build the environment and run the
default pipeline persisting a new model and loading it to predict on the
remaining unlabled data.

The `Makefile` in this directory is well documented, and demonstrates common
usage of the `main.py` interface. If you're new to this project, I encourage you
to read the `Makefile` first.

### Bleh!

Hello! Predictions, persisted to the `predictions` directory.

## Dependencies

- **AWS:** This repository assumes the environment has a valid `aws` command
line interface configured. This is required for the
[`boto3`](https://github.com/boto/boto3) API to run "out of the box." If you can
run `aws s3 sync s3://umich-flint ./data`, then you have configured properly.

- **Docker:** The Docker commands in the `Makefile` require Docker to be
installed. Consider the platform and environment you are running, and find the
corresponding installation instructions in the official documentation.
