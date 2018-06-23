#!/bin/bash

set -e

# FIXME: Print test run output if tests fail
bazel test --python_path=/usr/local/bin/python2 unittests-py2
bazel test --python_path=/usr/local/bin/python3 unittests-py3

# FIXME: Can this thing be convinced to add a python shebang?
bazel build --build_python_zip bin

# Add Python shebang so that it looks like a pex file
echo '#!/usr/bin/env python' | cat - ./bazel-bin/bin.zip > ./bin.pex
chmod a+x ./bin.pex

./bin.pex