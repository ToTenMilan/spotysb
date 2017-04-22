namespace :scheduler do
  desc 'Destroy all comments'
  task destroy: :environment do
    Comment.destroy_all
  end
end
