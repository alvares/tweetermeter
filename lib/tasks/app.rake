##
# gem sources -a http://gems.github.com
# sudo gem install fs-fs_vlad
# sudo gem install retr0h-fs_vlad

begin
  require 'vlad'
  Vlad.load :scm => :git, :web => :apache
rescue LoadError
  puts $!
end

##
# Extending 'vlad:update' with 'gems:build'.
namespace :vlad do
  desc "Build native extensions after vlad:update"
  remote_task :update, :roles => :app do
    run "cd #{current_path}; #{rake_cmd} gems:build"
  end
end
