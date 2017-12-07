gems={
'fog-azure-rm'     =>  '0.3.2',
'fog-core'         =>  '1.43.0',
'fog-aws'          =>  '1.2.0',
'aws-sdk'          =>  '2.7.3',
'knife-ec2'        =>  '0.15.0',
'knife-rackspace'  =>  '1.0.3',
'knife-google'     =>  '3.1.1',
'foodcritic'       =>  '9.0.0',
}
gems.each_with_index do |(utility,version),index|
  describe gem("#{utility}") do
    it { should be_installed }
end
describe command("gem list ^#{utility}$") do
its('stdout') { should match "#{utility}\s(#{version})\n"}
end
end
