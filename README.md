# osrm-setup
Scripts and lua file needed to set up an osrm backend server
## Step 1: Get OSRM latest release
Download and extract the zipped latest osrm backend source code from [here](https://github.com/Project-OSRM/osrm-backend/releases). 

Move `accessmaplite-osrm-backend-scripts/` into root directory of osrm source code.

Move `profile.lua` into `profiles/` under the root directory.

## Step 2: Get dependencies
For more details please check out the osrm tutorial [here](https://github.com/Project-OSRM/osrm-backend/wiki/Building-OSRM)
### Mac OS
Please install [homebrew](http://mxcl.github.com/homebrew/) package system. And run:
`brew install boost git cmake libzip libstxxl libxml2 lua tbb ccache`
To be able to compile tools: 
`brew install GDAL`
### Linux
Run `accessmaplite-00-setup.sh` under root directory of the OSRM project:
```
sh accessmaplite-osrm-backend-scripts/accessmaplite-00-setup.sh 
```
## Step 3: Run other scripts
Under root directory:
```
sh accessmaplite-osrm-backend-scripts/accessmaplite-10-build.sh
sh accessmaplite-osrm-backend-scripts/accessmaplite-20-fetch.sh
sh accessmaplite-osrm-backend-scripts/accessmaplite-30-deploy.sh
```
 Notice that when you make changes to `profiles/profile.lua`, you only need to rerun the last line to reload `profiles/profile.lua` and restart the server.
