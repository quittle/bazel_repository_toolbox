# Copyright (c) 2017 Dustin Toff
# Licensed under Apache License v2.0

# These are all just for testing the repository rules. There are no repository rules to include in
# other projects.

load(":github_repository.bzl", "github_repository", "new_github_repository")

github_repository(
    name = "bazel_commit",
    commit = "b8a32e07ee8297c89ca8020af4fa2163a766706f",
    project = "skydoc",
    user = "bazelbuild",
)

load("@bazel_commit//:setup.bzl", "skydoc_repositories")

skydoc_repositories()

github_repository(
    name = "bazel_tag",
    project = "skydoc",
    tag = "0.3.0",
    user = "bazelbuild",
)

github_repository(
    name = "bazel_tag_sha256",
    project = "skydoc",
    sha256 = "c2d66a0cc7e25d857e480409a8004fdf09072a1bd564d6824441ab2f96448eea",
    tag = "0.3.0",
    user = "bazelbuild",
)

github_repository(
    name = "bazel_commit_sha256",
    commit = "b8a32e07ee8297c89ca8020af4fa2163a766706f",
    project = "skydoc",
    sha256 = "c05bd8bdeffe0f2fc3dd27baf0749640873b42b723943281987ab74423dd1c43",
    user = "bazelbuild",
)

new_github_repository(
    name = "bazel_commit_build_file_content_sha256",
    build_file_content = """filegroup(name="dummy", visibility=["//visibility:public"]) """,
    commit = "55dafa9e7204742f9c3329241d8fdf6d667288ee",
    project = "skydoc",
    sha256 = "e47a74a44385e42a6a9a1c34430896a24d69706c689dadffa78772e818541a37",
    user = "bazelbuild",
)

new_github_repository(
    name = "bazel_tag_build_file",
    build_file = "//:dummy.BUILD",
    project = "skydoc",
    tag = "0.3.0",
    user = "bazelbuild",
)

# For repo_with_v_in_tag
github_repository(
    name = "io_bazel_rules_go",
    project = "rules_go",
    sha256 = "dea9e0405aae86e5339b1ccdd656387b4982352da7cec3ab688f1965440d3326",
    tag = "0.9.0",
    user = "bazelbuild",
)

github_repository(
    name = "repo_with_v_in_tag",
    project = "brotli",
    sha256 = "4c61bfb0faca87219ea587326c467b95acb25555b53d1a421ffa3c8a9296ee2c",
    tag = "v1.0.7",
    user = "google",
)
