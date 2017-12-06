%w(
 git                                   
git-client                             
git-client.jpi                          
git.jpi
).each do |utility|
  describe directory("/var/lib/jenkins/plugins/#{utility}") do
    it { should exist }
  end
end



