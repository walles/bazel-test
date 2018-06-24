#!/bin/bash

set -e

# Call different but identical targets from Python 2 and Python 3. If we call
# the same target in both cases it breaks caching.
bazel test --test_output=errors --python_path=/usr/local/bin/python2 unittests-py2
bazel test --test_output=errors --python_path=/usr/local/bin/python3 unittests-py3

# FIXME: Can this thing be convinced to add a python shebang?
bazel build --build_python_zip bin

# Add Python shebang so that it looks like a pex file
echo '#!/usr/bin/env python' | cat - ./bazel-bin/bin.zip > ./bin.pex
chmod a+x ./bin.pex

./bin.pex
