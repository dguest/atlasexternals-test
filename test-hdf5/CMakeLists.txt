cmake_minimum_required( VERSION 3.2 )

project( hdf5test )

find_package( AnalysisBaseExternals REQUIRED )
find_package( HDF5 1.10 REQUIRED )
message(STATUS "${HDF5_FOUND} ${HDF5_DIR} ${HDF5_VERSION}")

add_executable( testExec testExec.cxx )
target_include_directories( testExec PUBLIC ${HDF5_INCLUDE_DIRS} )
message(STATUS ${HDF5_LIBRARIES})
target_link_libraries( testExec ${HDF5_LIBRARIES} )
