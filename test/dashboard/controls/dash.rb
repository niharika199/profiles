include_controls 'dotchef'
include_controls 'gem'

describe package ('build-essential')do
it  {should be_installed}
end

%w[ /root/.jenkins
 /root/.jenkins/plugins ].each do |path|
  directory ("#{path}")do
 its('owner') {should eq 'root'}
its('group') {should eq 'root'}
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


files = {
  'resource'   => 'resource-create.xml',
  'network'    => 'dengine-network.xml',
  'dashboard'  => 'dashboard-config.xml',
  'promote'    => 'promote-job.xml',
  'dengineui'  => 'dengineui-deploy.xml',
  'openstack'  => 'openstack-config.xml',
  'server'     => 'server-create.xml',
  'validate'   => 'validate_iac.xml',
}
files.each_with_index do |(config_name, file_name), index|
  describe file ("/var/chef/cache/#{file_name}") do
    it {should exist}
    its('mode') {should cmp '0644'}
  end
end

#jobs = {
 # 'dengine-network'       => network,
 # 'kickstart-dashboard'   => dashboard,
 # 'promote-job'           => promote,
 # 'dengineui-deploy'      => dengineui,
 # 'openstack-provision'   => openstack,
 # 'Resource-Create-Azure' => resource,
 # 'server-create'         => server,
 # 'validate_iac'          => validate,
#}

require_controls 'dengine_users' do
control 'default'
end


