### gem sources -a http://gems.github.com
### sudo gem install fs-fs_vlad

begin
  require 'vlad'
  Vlad.load :scm => :git, :web => :apache
rescue LoadError
  puts $!
end

### Extending 'vlad:update' with 'gems:build'.
# namespace :vlad do
#   desc "Build native extensions after vlad:update"
#   remote_task :update, :roles => :app do
#     gems_path = File.join(current_path, 'vendor', 'gems')
#     run "cd #{current_path}; #{rake_cmd} gems:build"
#     run "cp #{gems_path}/hpricot-0.6.161/bin/* #{gems_path}/hpricot-0.6.161/lib/"
#   end
# end
