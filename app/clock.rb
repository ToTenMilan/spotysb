require './config/boot'
require './config/environment'
require 'clockwork'

module Clockwork
  every(1.day, 'delete.comment', at: '15:02') {
    Comment.destroy_all
  }
end
