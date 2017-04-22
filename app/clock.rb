require './config/boot'
require './config/environment'
require 'clockwork'


  every(1.day, 'name', at: '18:28') do
    Rake::Task['comment:destroy'].invoke
  end


  # every(1.day, 'delete.comment', at: '18:13') {
  #   Comment.destroy_all
  # }

