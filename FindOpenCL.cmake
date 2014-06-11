find_package(PackageHandleStandardArgs)

if(APPLE)
  find_library(OPENCL_LIBRARY OpenCL)
  find_path(OPENCL_INCLUDE_DIR OpenCL/cl.h)
else()
  find_library(OPENCL_LIBRARY OpenCL)
  find_path(OPENCL_INCLUDE_DIR CL/cl.h)
endif()

find_package_handle_standard_args(OpenCL
  REQUIRED_VARS OPENCL_LIBRARY OPENCL_INCLUDE_DIR)

mark_as_advanced(OPENCL_INCLUDE_DIR OPENCL_LIBRARY)
