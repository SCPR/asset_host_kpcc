AssetHost KPCC
========================
This is a plugin for [AssetHost](https://github.com/scpr/assethost) that provides functionality specific to [KPCC](https://kpcc.org).  You can use this codebase as a reference for how to build your own plugin for AssetHost.

## What is an AssetHost plugin?

AssetHost is a Ruby application that uses the Rails web framework, hence a plugin for AssetHost is a Ruby "gem" package containing extra Ruby code and front-end assets that get executed by AssetHost.

## Features of this plugin

- Adds a time-saving visual indicator that tells the user if the image is proper to use in KPCC content
- [Honeybadger](https://honeybadger.io) error logging.


## Getting Started

You must be using a version of AssetHost >= 3.0

## Installation

1. Add the following line to your Gemfile: `gem 'asset_host_kpcc', github: 'scpr/asset_host_kpcc'`
2. Run `bundle install`
3. Run `rails g asset_host:asset_host_kpcc:install`

