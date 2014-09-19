# MEAN.js

Boilerplate setup to build and deploy [MEAN.js](http://meanjs.org) apps.

It includes:

- **1 server** (`nodes/mean-node.yml`) with:
  - **Nginx** as a Web frontend,
  - **NodeJS**, including `bower`, `grunt` and `forever`, to run the app.
  - **MongoDB** for storage.
- **1 build task** (`tasks/mean-build.yml`) which will fetch your MEAN.js app from GitHub, build the app and run it.
- **1 task** that takes care of the app build (`npm install` and `grunt build`).

## Install & Run

Simply use the link below:

[![Fork on devo.ps](https://app.devo.ps/assets/images/fork.png)](https://app.devo.ps/#/fork?git_url=https://github.com/devops-community/mean)


1. Fork this repository using the "Fork on devo.ps" button.
2. Navigate to the repos page.
3. Activate the master branch; you will be prompted for some details (provider, server size, Git URL of your app...).

You may as well use the task's webhook to build and deploy every time your commit a change to your app; simply point the [GitHub repository Webhook](https://developer.github.com/webhooks/creating/) to `https://wh.devo.ps/{USER}/{REPO}/rebuild/mean/app` (where `{USER}` is your username and `{REPO}` is the name of your forked repo in devo.ps). This will effectively trigger the build and deploy task every time GitHub registers a commit.

You can obfuscate this Webhook URL in the `tasks/mean-build.yml` file (see the `webhooks` attribute).
