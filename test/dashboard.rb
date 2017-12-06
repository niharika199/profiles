plugins = {
  'build-name-setter' => '1.6.5',
  'git'               => '3.0.0',
  'credentials'       => '2.1.14',
  'bitbucket'         => '1.1.5',
}

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

#---jobs = {
#  'dengine-network'       => network,
#  'kickstart-dashboard'   => dashboard,
 # 'promote-job'           => promote,
 # 'dengineui-deploy'      => dengineui,
 # 'openstack-provision'   => openstack,
 # 'Resource-Create-Azure' => resource,
 # 'server-create'         => server,
#  'validate_iac'          => validate,
#}

plugins.each_with_index do |(plugin_name, plugin_version), index|
  describe package('#{plugin_name}') do
 it {should be_installed}
   its('version') {should eq "#{plugin_version}"}
#    notifies :restart, 'runit_service[jenkins]', :immediately
  end
end

files.each_with_index do |(config_name, file_name), index|
  describe file ("/var/chef/cache/#{file_name}") do
    it {should exist}
    its('mode') {should cmp '0644'}
  end
end

#jobs.each_with_index do |(job_name, config_name), index|
 # jenkins_job job_name do
  #  config config_name
#  end
#end
