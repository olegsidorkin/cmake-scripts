# Copyright 2018 Stable Tec
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Set the compiler standard to C++11
macro(_Cxx11)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    if(MSVC_VERSION GREATER_EQUAL "1900" AND CMAKE_VERSION LESS 3.10)
        include(CheckCXXCompilerFlag)
        CHECK_CXX_COMPILER_FLAG("/std:c++11" _cpp_latest_flag_supported)
        if(_cpp_latest_flag_supported)
            add_compile_options("/std:c++11")
        endif()
    endif()
endmacro()

# Set the compiler standard to C++14
macro(_Cxx14)
    set(CMAKE_CXX_STANDARD 14)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    if(MSVC_VERSION GREATER_EQUAL "1900" AND CMAKE_VERSION LESS 3.10)
        include(CheckCXXCompilerFlag)
        CHECK_CXX_COMPILER_FLAG("/std:c++14" _cpp_latest_flag_supported)
        if(_cpp_latest_flag_supported)
            add_compile_options("/std:c++14")
        endif()
    endif()
endmacro()

# Set the compiler standard to C++17
macro(_Cxx17)
    set(CMAKE_CXX_STANDARD 17)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    if(MSVC_VERSION GREATER_EQUAL "1900" AND CMAKE_VERSION LESS 3.10)
        include(CheckCXXCompilerFlag)
        CHECK_CXX_COMPILER_FLAG("/std:c++17" _cpp_latest_flag_supported)
        if(_cpp_latest_flag_supported)
            add_compile_options("/std:c++17")
        endif()
    endif()
endmacro()