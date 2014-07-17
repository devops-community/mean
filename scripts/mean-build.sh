#!/bin/bash

cd {{ mean_dir }}

# Install the node packages
npm install

# Build the mean app
grunt build

# Perform extra changes in the meanjs configuration (in config/)
# ...
