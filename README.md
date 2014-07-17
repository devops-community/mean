# Means

Build and deploy a node with an app based on the [mean framework](http://meanjs.org)

# Repo details

## Node

The node is built-in with:

- nodejs; including bower, grunt and forever. It is meant to run the app itself
- nginx; will act as the web frontend
- mongodb; is the database

## Task

A build task is provided that will perform the following upon run:

- prepare the meanjs workdir
- clone (a) the meanjs repo from github
- run a build script that will install meanjs, including the dependencies and the configuration
- setup a nginx virtual host that will serve and proxy the app
- run the meanjs app production ready via foreverd

## Script

A simple bash script is provided to perform the basic build of the meanjs app, including:

- npm install
- grunt build

This script is easily customizable to include more tuning and changes of configuration as per your app requirements.

# Install

To provision the node, you need to activate your repository at https://app.devo.ps/#/user/mean/settings.

But before enabling the repository, you will need to perform some changes in the provided node and task definitions.

## Node

You will need to specify in the node definition:

- the provider details; `name`, `size` and `location` - you need to have the provider defined in your profile
- extra packages to install on the server
- extra configuration of the installed services

Refer to the [documentation](http://docs.devo.ps) for more details.

## Task

You will need to adapt the task definition as per your requirements:

- `domain`: what domain you will use to access the application
- webhooks `path`: if you want to be able to automatically trigger the build on POST request
- other config if needed

# Customization

The current repo provides a generic install, it needs to be customized to run as per your requirements / code. You may consider the following:

- have a fork of the meanjs repo with your custom code, and eventually setup a webhook to automatically re-run the build script upon commit in your github repo
- update the build script to perform more setup (e.g. configuration file, api keys, etc.)
- update the task itself to define other variables / commands to run on build
- 
