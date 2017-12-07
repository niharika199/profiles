describe package('apache2')do
it {should be_installed}
end


describe file( '/var/www/html/index.html')do
it {should exist}
its('owner') {should eq 'root'}
its('group') {should eq 'root'}
end

describe service('apache2')do
it {should be_enabled}
it {should be_running}
end

describe package('apt') do
it { should be_installed }
end
