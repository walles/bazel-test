Developed on bazel 0.14.

## Inspiration
* https://il.pycon.org/2016/static/sessions/benjamin-peterson.pdf

## Instructions
* Build with `bazel build bin`
* Run with `./bazel-bin/bin`

# TODO
* Create a unit test with `py.test`, make sure bazel runs that
* Put tests in one directory and code in the other
* Figure out how to turn everything into a pex-like zip file
* Figure out how to build with both Python 2 and Python 3
* Figure out how to do the non-unit-tests validation we do for `px`
* Switch `px` to use bazel
* Figure out how to get `bazel build` to build our stuff (without a trailing `bin`)
* Improve naming in the WORKSPACE and BUILD files

## DONE
* Move sources into their own directory
* Add a `requirements.txt` and make sure our code depends on that
