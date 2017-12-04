control 'directoty_create' 
describe directory('/root/.chef') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
its ('mode') { should cmp '0755' }
end

describe directory('/var/lib/jenkins/.chef') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
its ('mode') { should cmp '0755' }
end

describe directory('/root/chef-repo') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
its ('mode') { should cmp '0755' }
end

describe directory('/root/chef-repo/.chef') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
its ('mode') { should cmp '0755' }
end

describe directory('/var/lib/jenkins/chef-repo/.chef') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
its ('mode') { should cmp '0755' }
end

Dir['/root/chef-repo/.chef/*'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         its('mode') { should cmp '0644' }
       end
     end

