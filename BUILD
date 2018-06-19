package(default_visibility = ["//visibility:public"])

py_library(
    name = "lib",
    srcs = ["src/lib.py"],
)

py_binary(
    name = "bin",
    srcs = ["src/bin.py"],
    deps = [":lib"],
)

filegroup(
    name = "srcs",
    # srcs = ["BUILD"] + glob(["**/*.py"]),
    srcs = ["BUILD", "src/bin.py", "src/lib.py"]
)
