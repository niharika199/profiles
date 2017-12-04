describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end

Dir['/var/chef/cache/*.xml'].each do |file_name|
  next if  File.directory? file_name
       print file_name
         describe file(file_name) do
         it { should exist }
 its('mode') { should cmp '0644' }
      end
 end

