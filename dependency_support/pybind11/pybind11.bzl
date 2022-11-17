# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Loads the Pybind11 Python<->C++ FFI library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def pybind11():
    # Updated version but it makes a Python crypography wheel fail to build.
    # maybe(
    #     http_archive,
    #     name = "pybind11_bazel",
    #     strip_prefix = "pybind11_bazel-faf56fb3df11287f26dbc66fdedf60a2fc2c6631",
    #     urls = ["https://github.com/pybind/pybind11_bazel/archive/faf56fb3df11287f26dbc66fdedf60a2fc2c6631.tar.gz"],  # 2022-11-02
    #     sha256 = "a2b107b06ffe1049696e132d39987d80e24d73b131d87f1af581c2cb271232f8",
    # )

    maybe(
        http_archive,
        name = "pybind11_bazel",
        strip_prefix = "pybind11_bazel-992381ced716ae12122360b0fbadbc3dda436dbf",
        urls = ["https://github.com/pybind/pybind11_bazel/archive/992381ced716ae12122360b0fbadbc3dda436dbf.tar.gz"],  # 2021-09-17
        sha256 = "0f7a79c25bbe1156724f64c84f6fc4cdae4713fe18bba13aa256984589e99919",
    )

    maybe(
        http_archive,
        name = "pybind11",
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        strip_prefix = "pybind11-30eb39ed79d1e2eeff15219ac00773034300a5e6",
        urls = ["https://github.com/pybind/pybind11/archive/30eb39ed79d1e2eeff15219ac00773034300a5e6.tar.gz"],  # 2020-12-17
        sha256 = "2e748579ea1903d55b8abe9d314fd5c3cf9f4e5734c525444e4d2aed146efc9e",
    )
