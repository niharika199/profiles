include_controls 'directory_create'
include_controls 'gem_install'
require_controls 'plugin-jenkins' do
control 'test'
end
include_controls 'jenkins-config'
include_controls 'jenkins-job'
include_controls 'deinge-users'
control 'workspace' do
Dir['/var/lib/jenkins/chef-repo/templates/*'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         it { should exist }
        its('owner') { should eq 'jenkins' }
        its('group') { should eq 'jenkins' }
        its('mode') { should cmp '0644' }
       end
     end


Dir['/var/lib/jenkins/chef-repo/data_bags/*'].each do |dir|
  next   if not   File.directory? dir
       print dir
         describe directory(dir) do
         it { should exist }
            its('owner') { should eq 'jenkins' }
         its('group') { should eq 'jenkins' }
      end
 end
end

