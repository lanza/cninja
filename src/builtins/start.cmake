if(CMAKE_VERSION VERSION_GREATER 3.9)
  cmake_policy(VERSION ${CMAKE_VERSION})
else()
  cmake_policy(VERSION 3.9)
endif()

macro(add_linker_flags)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT ${ARGV})
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT ${ARGV})
  string(APPEND CMAKE_MODULE_LINKER_FLAGS_INIT ${ARGV})
endmacro()
