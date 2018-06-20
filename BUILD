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

filegroup(
    name = "srcs",
    # srcs = ["BUILD"] + glob(["**/*.py"]),
    srcs = ["BUILD", "src/bin.py", "src/lib.py"]
)
