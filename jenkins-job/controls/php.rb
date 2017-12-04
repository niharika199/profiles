describe file('/var/lib/jenkins/nodes/build-machine/config.xml') do
 it { should exist }
end

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

