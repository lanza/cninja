if(CMAKE_VERSION VERSION_GREATER 3.9)
  cmake_policy(VERSION ${CMAKE_VERSION})
else()
  cmake_policy(VERSION 3.9)
endif()

foreach(LANG C CXX OBJC OBJCXX CUDA FORTRAN ASM)
  unset(CMAKE_${LANG}_FLAGS_INIT)
endforeach()

unset(CMAKE_EXE_LINKER_FLAGS_INIT)
unset(CMAKE_SHARED_LINKER_FLAGS_INIT)
unset(CMAKE_MODULE_LINKER_FLAGS_INIT)


macro(add_linker_flags)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT ${ARGV})
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT ${ARGV})
  string(APPEND CMAKE_MODULE_LINKER_FLAGS_INIT ${ARGV})
endmacro()

macro(set_cache)
  if("${${ARGV0}}" STREQUAL "")
    set(${ARGV0} ${ARGV1} CACHE INTERNAL "")
  endif()
endmacro()
