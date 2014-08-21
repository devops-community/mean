#!/bin/bash


# Loading the environment variables
ROOT="$WORKDIR"

# Let's work from the web folder
cd $ROOT

# Install the node packages
npm install

# Build the mean app
grunt build

# Perform extra changes in the meanjs configuration (in config/)
# ...
