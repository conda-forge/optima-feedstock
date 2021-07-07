mkdir build
cd build

@REM Configure the build of Optima
cmake -GNinja ..                            ^
    -DCMAKE_BUILD_TYPE=Release              ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INCLUDE_PATH=%LIBRARY_INC%      ^
    -DOPTIMA_PYTHON_INSTALL_PREFIX=%PREFIX% ^
    -DPYTHON_EXECUTABLE=%PYTHON%

@REM Build and install Optima in %LIBRARY_PREFIX%
ninja install

@REM Perform all Optima tests after build step
ninja tests
