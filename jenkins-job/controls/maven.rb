describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end
describe file('/var/chef/cache/maven-config.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end

Dir['/var/lib/jenkins/jobs/*'].each do |dir|
  next   if not   File.directory? dir
       print dir
         describe directory(dir) do
         it { should exist }
      end
 end

Dir['/var/lib/jenkins/*'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         it { should exist }
       end
     end

