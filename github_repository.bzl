# Copyright (c) 2017 Dustin Toff
# Licensed under Apache License v2.0

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")

# Equivalent to new_git_repository but for github repos
def new_github_repository(name = None, user = None, project = None, commit = None, tag = None, sha256 = None, build_file = None, build_file_content = None):
    if sha256 != None:
        # Ordered by specificity
        id = commit or tag

        # GitHub strips the "v" from tags like "v1.0" and uses "1.0" instead
        github_id = id
        for num in range(10):
            if id.startswith("v{n}".format(n = num)):
                github_id = id[1:]
                break

        return http_archive(**{
            "name": name,
            "sha256": sha256,
            "strip_prefix": "{project}-{id}".format(project = project, id = github_id),
            "urls": [
                "https://github.com/{user}/{project}/archive/{id}.tar.gz".format(user = user, project = project, id = id),
            ],
            "build_file": build_file,
            "build_file_content": build_file_content,
        })
    else:
        print(
            ("Consider adding a sha256 argument to {name} for improved security and downloads.\n" +
             "See https://docs.bazel.build/versions/master/be/workspace.html for more " +
             "information regarding these recommendations from Bazel").format(name = name),
        )

        if build_file != None or build_file_content != None:
            method = new_git_repository
        else:
            method = git_repository

        return method(**{
            "name": name,
            "remote": "https://github.com/{user}/{project}.git".format(user = user, project = project),
            "commit": commit,
            "tag": tag,
            "build_file": build_file,
            "build_file_content": build_file_content,
        })

# Equivalent to new_git_repository but for github repos
def github_repository(name = None, user = None, project = None, commit = None, tag = None, sha256 = None):
    return new_github_repository(name = name, user = user, project = project, commit = commit, tag = tag, sha256 = sha256)
