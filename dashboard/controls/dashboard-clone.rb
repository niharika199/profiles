describe file('/root/.ssh/git-ssh') do
it { should exist }
its('owner') { should eq 'root' }
its('mode') { should cmp '0600' }
end


