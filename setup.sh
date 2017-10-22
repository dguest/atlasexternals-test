# seetup script for test project

# dive into the build dir
mkdir -p build_abe
pushd build_abe/


# setup ATLAS
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
echo "=== running setupATLAS ==="
setupATLAS

# setup, build
asetup none,gcc62 --cmakesetup
if [[ ! -f CMakeCache.txt ]]; then
    cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCTEST_USE_LAUNCHERS=TRUE ../atlasexternals/Projects/AnalysisBaseExternals/
fi
make -j 4
make install/fast DESTDIR=../install/AnalysisBaseExternals/22.0.0/

# go back to where we came from
popd

# source setup script
source install/AnalysisBaseExternals/22.0.0/InstallArea/x86_64-slc6-gcc62-opt/setup.sh
