#!/bin/bash

set -e

# Call different but identical targets from Python 2 and Python 3. If we call
# the same target in both cases it breaks caching.
bazel test --test_output=errors --python_path=/usr/local/bin/python2 --platform_suffix=py2 unittests
bazel test --test_output=errors --python_path=/usr/local/bin/python3 --platform_suffix=py3 unittests

bazel build --build_python_zip bin

# This file should have a Python shebang and be a complete zip file
./bazel-bin/bin
