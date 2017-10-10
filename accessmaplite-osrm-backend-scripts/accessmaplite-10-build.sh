# Build
echo "Compiling OSRM..."
sleep 3
mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
