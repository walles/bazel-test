package(default_visibility = ["//visibility:public"])

load("@my_deps//:requirements.bzl", "requirement")

py_library(
    name = "lib",
    srcs = ["src/lib.py"],
)

py_binary(
    name = "bin",
    srcs = ["src/bin.py"],
    deps = [
        ":lib",

        # The name in quotes here must match an entry in requirements.txt
        requirement("crontab")
        ],
)

# This should be identical to unittests-py3, but needs to be separate from it
# for caching reasons. Call this one only using Python 2.
py_test(
    name = "unittests-py2",

    srcs = glob(["tests/**/*.py"]),
    main = "tests/run-tests.py",

    deps = [
        ":lib",
    ]
)

# This should be identical to unittests-py2, but needs to be separate from it
# for caching reasons. Call this one only using Python 3.
py_test(
    name = "unittests-py3",

    srcs = glob(["tests/**/*.py"]),
    main = "tests/run-tests.py",

    deps = [
        ":lib",
    ]
)
