Developed on bazel 0.14.

## Inspiration
* https://il.pycon.org/2016/static/sessions/benjamin-peterson.pdf
* https://github.com/bazelbuild/rules_python#experimental-bazel-python-rules

## Instructions
* Test with `bazel test unittests`
* Build with `bazel build bin`
* Run with `./bazel-bin/bin`

# TODO
* Figure out how to turn everything into a pex-like zip file
* Figure out how to generate a `py2.py3` `.whl` file
* Figure out how to build with both Python 2 and Python 3
* Make Bazel run `shellcheck` on all shell scripts
* Make Bazel run `flake8` on all Python code, both in Python 2 and Python 3 mode
* Make Bazel run `mypy` on all Python code, both in Python 2 and Python 3 mode
* Make Bazel run `installtest.sh`
* Make Bazel verify the shebang of the generated executable zip file
* Make Bazel verify there are no `.so` file in the generated executable zip file
* Make Bazel test run `px`, `px $SOMEPID`, `px --version`
* Verify we haven't forgotten any validation we're already doing in `px`
* Switch `px` to use bazel
* Create a unit test with `py.test`, make sure bazel runs that
* Make sure test runs generate coverage data
* Best way to get test output from `bazel test unittests`?
* Figure out how to get `bazel build` to build our stuff (without having to do
  `bazel build bin`)
* Improve naming in the WORKSPACE and BUILD files

## DONE
* Move sources into their own directory
* Add a `requirements.txt` and make sure our code depends on that
* Put tests in one directory and code in the other
