#####################
# Pipeline Makefile #
#####################

# Description:
# 	A Makefile is a configuration file consumed by the gnu `make` program.
# 	The `make` syntax is fairly simple:
#
#   ```make
#   target: dependency [dependecies ...]
#       command
#   ```
#
#	Taken as a block, the above is referred to as a "rule."
#
#   If `target` is a file, `make` will only run the rule if the target does not
#   exist, or if any of the files in the dependencies list is younger than the
#   target file. If the target is merely a name with no coressponding file (that
#   is, the commands in the rule do not generate a file with the name of the
#   target), then make will have nothing to check the timestamp against, and
#   will run the commands for that rule regardless.

# A PHONY is a fake target. `make` was made for generating binaries. Our targets
# are "fake", or `.PHONY` (\ to wrap line length)
.PHONY: 
		venv \
		clean

all: clean venv 

clean:
	rm -rf venv

venv:
	@echo "==> Deleting existing environment ..."
	rm -rf venv
	@echo "==> Creating a fresh environment ..."
	python -m venv venv
	venv/bin/pip install -r requirements.txt

