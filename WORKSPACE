# Copyright (c) 2017 Dustin Toff
# Licensed under Apache License v2.0

# These are all just for testing the repository rules. There are no repository rules to include in
# other projects.

load(":github_repository.bzl", "github_repository", "new_github_repository")

github_repository(
    name = "bazel_commit",
    user = "bazelbuild",
    project = "skydoc",
    commit = "55dafa9e7204742f9c3329241d8fdf6d667288ee",
)

github_repository(
    name = "bazel_tag",
    user = "bazelbuild",
    project = "skydoc",
    tag = "0.1.4",
)

github_repository(
    name = "bazel_tag_sha256",
    user = "bazelbuild",
    project = "skydoc",
    tag = "0.1.4",
    sha256 = "bf21e478ad1a03491c284faabd2a4a22141c14705b0fe3f19e79663b25592620",
)

github_repository(
    name = "bazel_commit_sha256",
    user = "bazelbuild",
    project = "skydoc",
    commit = "55dafa9e7204742f9c3329241d8fdf6d667288ee",
    sha256 = "e47a74a44385e42a6a9a1c34430896a24d69706c689dadffa78772e818541a37",
)

new_github_repository(
    name = "bazel_commit_build_file_content_sha256",
    user = "bazelbuild",
    project = "skydoc",
    commit = "55dafa9e7204742f9c3329241d8fdf6d667288ee",
    sha256 = "e47a74a44385e42a6a9a1c34430896a24d69706c689dadffa78772e818541a37",
    build_file_content = """filegroup(name="dummy", visibility=["//visibility:public"]) """,
)

new_github_repository(
    name = "bazel_tag_build_file",
    user = "bazelbuild",
    project = "skydoc",
    tag = "0.1.4",
    build_file = "dummy.BUILD",
)
