# Just runs osrm-extract, osrm-contract, and osrm-routed as documented in the
# README

cd build

./osrm-extract seattle_washington.osm.pbf -p ../profiles/elevation.lua
./osrm-contract seattle_washington.osrm
./osrm-routed seattle_washington.osrm
