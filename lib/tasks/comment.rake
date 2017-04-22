namespace :comment do
  desc 'Destroy all comment'
  task destroy: :environment do
    Comment.destroy_all
  end
end
