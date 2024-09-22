# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/build/third-party/extern_autolog-src")
  file(MAKE_DIRECTORY "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/build/third-party/extern_autolog-src")
endif()
file(MAKE_DIRECTORY
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/build/third-party/extern_autolog-build"
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog"
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/tmp"
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/src/extern_autolog-populate-stamp"
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/src"
  "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/src/extern_autolog-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/src/extern_autolog-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/BaiduNetdiskDownload/调用dll综合/PaddleOCR-release-2.6/PaddleOCR-release-2.6/deploy/cpp_infer/Build/third-party/extern_autolog-subbuild/autolog/src/extern_autolog-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
