'use strict';
#
# CloudMine, Inc.
# 2015
#

###
# Require your Snippets
# This can be more expressive, for example, you can use `fs` to
# read all snippets in a directory and set them to your `module.exports`.
###

BasicSnippet = require './lib/basic'
AsyncSnippet = require './lib/async'
CloudMineNode = require 'cloudmine-servercode'
# Require any other node module you want...

###
# The `module.exports` **must** be called before the server is started,
# or the server won't be able to read in the exports.
###

module.exports = {
  basic: BasicSnippet
  async: AsyncSnippet
};

###
# Start the CloudMine server.
###
CloudMineNode.start module, './index', (err)->
  console.log 'Server Started?', err

