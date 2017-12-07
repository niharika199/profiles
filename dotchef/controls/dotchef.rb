%w{
/var/lib/jenkins/.chef
/var/lib/jenkins/chef-repo/.chef
}
.each do  |path|
describe directory("#{path}") do
it { should exist }
its ('owner') {should eq 'root' }
its ('group') {should eq 'root' }
its ('mode') { should cmp '0755' }
end
end
Dir['/var/lib/jenkins/chef-repo/.chef/*'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         its('mode') { should cmp '0644' }
       end
     end


