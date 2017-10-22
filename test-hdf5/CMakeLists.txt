cmake_minimum_required( VERSION 3.2 )

project( hdf5test )

find_package( AnalysisBaseExternals REQUIRED )
find_package( HDF5 REQUIRED )

add_executable( testExec testExec.cxx )
target_include_directories( testExec PUBLIC ${HDF5_INCLUDE_DIRS} )
message(status ${HDF5_LIBRARIES})
target_link_libraries( testExec ${HDF5_LIBRARIES} )
