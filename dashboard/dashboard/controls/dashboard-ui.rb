include_controls 'webserver'
control 'dashboard-ui' do
describe package('libapache2-mod-php5') do
it { should be_installed }
end
end
 
