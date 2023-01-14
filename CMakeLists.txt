cmake_minimum_required(VERSION 3.14)

project(
	chat
	VERSION 0.0.0
	DESCRIPTION "Simple chat with text, voice and video."
	HOMEPAGE_URL "https://github.com/mfreiholz/chat"
	LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
#conan_basic_setup()

include(../cmake-cpp-struct/libs.cmake)
include(../cmake-cpp-struct/apps.cmake)
include(../cmake-cpp-struct/extensions/qt.cmake)

add_subdirectory(libs)
#add_subdirectory(test)
add_subdirectory(apps)
