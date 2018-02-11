# Bazel Repository Toolbox

[![Build Status](https://travis-ci.org/quittle/bazel_repository_toolbox.svg?branch=master)](https://travis-ci.org/quittle/bazel_repository_toolbox)

### What this is

Many open source projects are hosted on Github. It also enables easy switching from `git_repository`s to `http_archive`s, which is prefered when possible for increased security and download speeds. See [the official docs](https://docs.bazel.build/versions/master/be/workspace.html) for more documentation on why `git_repository` is not preferred when possible.

It will also nag you to add sha256 for repositories that don't specify it.

### Example Usage

```
# Ironically you can't load the GitHub rules without using the basic git_repository repository rule
git_repository(
    name = "bazel_repository_toolbox",
    remote = "https://github.com/quittle/bazel_repository_toolbox",
    commit = "<HASH-GOES-HERE>"
)

load("@bazel_repository_toolbox//:github_repository.bzl", "github_repository", "new_github_repository")

github_repository(
    name = "io_bazel",
    user = "bazelbuild",
    project = "bazel",
    tag = "0.7.0"
)

new_github_repository(
    name = "io_skydoc",
    user = "bazelbuild",
    project = "skydoc",
    commit = "55dafa9e7204742f9c3329241d8fdf6d667288ee",
    sha256 = "e47a74a44385e42a6a9a1c34430896a24d69706c689dadffa78772e818541a37",
    build_file = "skydoc.BUILD"
)
```
