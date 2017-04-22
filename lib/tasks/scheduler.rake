namespace :scheduler do
  desc "This task is called by heroku scheduler add-on"
  task :do_thing => :environment  do
    puts "doing something in task"
    puts "done"
  end
end
