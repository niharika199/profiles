

describe directory('/home/ubuntu/jenkins-node') do
it { should exist }
its('owner') { should eq 'ubuntu' }
its('group') { should eq 'ubuntu' }
end

Dir['/var/lib/jenkins/*.xml'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         it { should exist }
        its('owner') { should eq 'jenkins' }
        its('group') { should eq 'jenkins' }
        its('mode') { should cmp '0644' }
       end
     end

describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end

