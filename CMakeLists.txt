# Copyright 2006-2010 The FLWOR Foundation.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

PROJECT (zorba_excel_module)
ENABLE_TESTING ()
INCLUDE (CTest)

LIST (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_modules")

FIND_PACKAGE (Zorba REQUIRED HINTS "${ZORBA_BUILD_DIR}")
INCLUDE ("${Zorba_USE_FILE}")

ADD_TEST_DIRECTORY("${PROJECT_SOURCE_DIR}/test")
ADD_SUBDIRECTORY("src")

IF(NOT ZORBA_WITH_BIG_INTEGER)
  # These tests fail due to integer overflow.
  EXPECTED_FAILURE(zorba_excel_module/excel/math/sumproduct28.xq 0)
  EXPECTED_FAILURE(zorba_excel_module/excel/math/sumproduct29.xq 0)
  EXPECTED_FAILURE(zorba_excel_module/excel/math/sumproduct30.xq 0)
ENDIF(NOT ZORBA_WITH_BIG_INTEGER)

SETUP_EXTERNAL_MODULE()

DONE_DECLARING_ZORBA_URIS()

# vim:set et sw=2 ts=2:
