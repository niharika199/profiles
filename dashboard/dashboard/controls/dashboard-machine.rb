include_controls 'dotchef'
include_controls 'gem'
include_controls 'dengine_users'

control 'dashboard' do
describe package('build-essential')do
it { should be_installed }
end
%w{
/root/.jenkins
/root/.jenkins/plugins
}
.each do  |path|
describe directory("#{path}") do
it { should exist }
its ('owner') {should eq 'root' }
its ('group') {should eq 'root' }
end
end
%w{
  build-name-setter-1.6.5
  git-3.0.0
  credentials-2.1.14
  bitbucket-1.1.5
}.each do |(plugin_name)|
  describe file("/root/.jenkins/plugins/#{plugin_name}.plugin") do
  it {should exist}
    end
 end
%w{
  resource-create.xml
dengine-network.xml
dashboard-config.xml
promote-job.xml
dengineui-deploy.xml
openstack-config.xml
server-create.xml
validate_iac.xml
}.each do |(file_name)|
  describe file("/var/chef/cache/#{file_name}") do
  it {should exist}
its('mode') { should cmp '0644' }
    end
 end


%w{
  dengine-network       
  kickstart-dashboard   
  promote-job           
  dengineui-deploy     
  openstack-provision   
  Resource-Create-Azure 
  server-create         
  validate_iac          
}.each do |(job_name)|
  describe file("/var/lib/jenkins/jobs/#{job_name}") do
  it {should exist}
    end
 end
end
