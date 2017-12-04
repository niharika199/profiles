describe file('/etc/sudoers') do
 it { should exist }
its('mode') { should cmp '0440' }
end
