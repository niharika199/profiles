describe package('openjdk-8-jdk') do 
it { should be_installed }
end
describe package('ruby') do
it { should be_installed }
end
#JENKINS MASTER###
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
describe file('/var/lib/jenkins/chef-repo/.chef/new-iac-coe.pem') do
it { should exist }
its('mode') { should cmp '0400' }
end
describe file('/var/lib/jenkins/chef-repo/.chef/google_key.ppk') do
it { should exist }
its('mode') { should cmp '0400' }
end
###create.rb
###install.rb####
describe gem('fog-azure-rm', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '0.3.2' }
end

describe gem('fog-core', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '1.43.0' }
end
describe gem('fog-aws', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '1.2.0' }
end
describe gem('aws-sdk', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '2.7.3' }
end
describe gem('knife-ec2', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '0.15.0' }
end
describe gem('knife-rackspace', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '1.0.3' }
end
describe gem('knife-google', '/opt/chef/embedded/lib/ruby/gems/2.3.0/gems') do
  it { should be_installed }
its('version') { should eq '3.1.1' }
end

##gem installations####################

#    [PLUGIN JENKINS -TEST PLUGIN ]
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
#dependencies 

describe directory('/var/lib/jenkins/plugins/ace-editor') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ace-editor.jpi') do
 it { should exist }
end

describe directory('/var/lib/jenkins/plugins/ant') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ant.jpi') do
 it { should exist }
end

describe directory('/var/lib/jenkins/plugins/antisamy-markup-formatter') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/antisamy-markup-formatter.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/apache-httpcomponents-client-4-api') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins//apache-httpcomponents-client-4-api.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/conditional-buildstep') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/conditional-buildstep.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/config-file-provider') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/config-file-provider.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/credentials') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/credentials.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/cvs') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/cvs.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/external-monitor-job') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/external-monitor-job.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/git-client') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/git-client.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/gradle') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/gradle.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/ivy') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ivy.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/javadoc') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/javadoc.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/jquery') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/jquery.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/jquery-detached') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/jquery-detached.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/jsch') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/jsch.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/junit') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/junit.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/ldap') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ldap.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/mailer') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/mailer.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/matrix-auth') do
it { should exist }

end
describe file('/var/lib/jenkins/plugins/matrix-auth.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/matrix-project') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/matrix-project.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/maven-plugin') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/maven-plugin.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/pam-auth') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/pam-auth.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/parameterized-trigger') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/parameterized-trigger.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/run-condition') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/run-condition.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/scm-api') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/scm-api.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/script-security') do
it { should exist }

end
describe file('/var/lib/jenkins/plugins/script-security.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/ssh-credentials') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ssh-credentials.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/ssh-slaves') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/ssh-slaves.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/structs') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/structs.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/subversion') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/subversion.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/token-macro') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/token-macro.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/translation') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/translation.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/windows-slaves') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/windows-slaves.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-api') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-api.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-cps') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-cps.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-job') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-job.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-scm-step') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-scm-step.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-step-api') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-step-api.jpi') do
 it { should exist }
end
describe directory('/var/lib/jenkins/plugins/workflow-support') do
it { should exist }
end
describe file('/var/lib/jenkins/plugins/workflow-support.jpi') do
 it { should exist }
end
#dependencies
describe directory('/var/lib/jenkins/plugins/git') do
it { should exist }
end
describe command('grep -w "Plugin-Version: 3.0.0" /var/lib/jenkins/plugins/git/META-INF/MANIFEST.MF') do
  its('stdout') { should eq "Plugin-Version: 3.0.0\r\n" }
end

describe directory('/var/lib/jenkins/plugins/artifactory') do
it { should exist }
end
describe command('grep -w "Plugin-Version: 2.6.0" /var/lib/jenkins/plugins/artifactory/META-INF/MANIFEST.MF') do
  its('stdout') { should eq "Plugin-Version: 2.6.0\r\n" }
end

describe directory('/var/lib/jenkins/plugins/build-name-setter') do
it { should exist }
end
describe command('grep -w "Plugin-Version: 1.6.5" /var/lib/jenkins/plugins/build-name-setter/META-INF/MANIFEST.MF') do
  its('stdout') { should eq "Plugin-Version: 1.6.5\r\n" }
end
describe directory('/var/lib/jenkins/plugins/parameterized-trigger') do
it { should exist }
end
describe command('grep -w "Plugin-Version: 2.34" /var/lib/jenkins/plugins/parameterized-trigger/META-INF/MANIFEST.MF') do
  its('stdout') { should eq "Plugin-Version: 2.34\r\n" }
end
describe directory('/var/lib/jenkins/plugins/sonar') do
it { should exist }
end

describe command('grep -w "Plugin-Version: 2.4" /var/lib/jenkins/plugins/sonar/META-INF/MANIFEST.MF') do
  its('stdout') { should eq "Plugin-Version: 2.4\r\n" }
end

describe runit_service('jenkins') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
# TEST PLUGIN #################################################

#jenkins-config-credentials

#jenkins-config-default.rb

describe directory('/home/ubuntu/jenkins-node') do
it { should exist }
its('owner') { should eq 'ubuntu' }
its('group') { should eq 'ubuntu' }
end

describe file('/var/lib/jenkins/hudson.tasks.Maven.xml') do
  its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
end

describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end

describe file('/var/lib/jenkins/org.jfrog.hudson.ArtifactoryBuilder.xml') do
  its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end
#default.rb###########
#config.rb#############################################
describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end
######node.rb###################################

#jenkins-job######################
## default.rb######
describe file('/var/chef/cache/maven-config.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end
describe file('/var/chef/cache/provision-config.xml') do
it { should exist }
its('mode') { should cmp '0644' }
end
describe file('/var/chef/cache/chef-config.xml') do
it { should exist }
its('mode') { should cmp '0644' }
end

describe file('/var/chef/cache/sonar-job.xml') do
it { should exist }
its('mode') { should cmp '0644' }
end

describe file('/var/chef/cache/dengine-deploy.xml') do
it { should exist }
its('mode') { should cmp '0644' }
end
##### default.rb

##maven.rb

describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
it { should exist }
end

describe file('/var/chef/cache/maven-config.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end

describe directory('/var/lib/jenkins/jobs/provision-machine') do
it { should exist }
end
describe directory('/var/lib/jenkins/jobs/maven-build') do
it { should exist }
end
describe directory('/var/lib/jenkins/jobs/update-build-in-chef') do
it { should exist }
end
describe directory('/var/lib/jenkins/jobs/dengine-deploy') do
it { should exist }
end
describe file('/var/lib/jenkins/org.jfrog.hudson.ArtifactoryBuilder.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end
describe file('/var/lib/jenkins/hudson.tasks.Maven.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end
describe service('jenkins') do
it { should be_running }
end
####maven.rb######################

#### php.rb #######

describe file('/var/chef/cache/php-config.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end

describe file('/var/lib/jenkins/org.jfrog.hudson.ArtifactoryBuilder.xml') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end


##################### Dengine_default users########################################################
describe file('/etc/sudoers') do
 it { should exist }
its('mode') { should cmp '0440' }
end
########################Dengine default users################################################
describe directory('/var/lib/jenkins/chef-repo/templates') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
its('mode') { should cmp '0644' }
end

describe directory('/var/lib/jenkins/chef-repo/data_bags') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
end

describe directory('/var/lib/jenkins/chef-repo/data_bags/job_id') do
it { should exist }
its('owner') { should eq 'jenkins' }
its('group') { should eq 'jenkins' }
end
################################# JENKINS MASTER PLUGIN ###############################################


