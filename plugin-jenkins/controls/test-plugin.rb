control 'test' do
describe directory('/root/.jenkins') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
end

describe directory('/root/.jenkins/plugins') do
it { should exist }
its('owner') { should eq 'root' }
its('group') { should eq 'root' }
end

Dir['/root/.jenkins/plugins/*'].each do |file_name|
  next if File.directory? file_name
       print file_name
         describe file(file_name) do
         it { should exist }
       end
     end

Dir['/root/.jenkins/plugins/*'].each do |dir|
  next if not File.directory? dir
       print dir
         describe directory(dir) do
         it { should exist }
       end
     end

describe runit_service('jenkins') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
  end
end
