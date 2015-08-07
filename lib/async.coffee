'use strict';
#
# CloudMine, Inc.
# 2015
#

module.exports = (req, reply)->
  setTimeout ->
    reply(text: 'This took 5 seconds!')
  , 5000

