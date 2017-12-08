 describe file('/var/lib/apt/periodic/update-success-stamp') do
 its('owner') {should eq 'root'}
 its('group') {should eq 'root'}
 end


%w(
/var/cache/local
 /var/cache/local/preseeding
).each do |dirname|
describe directory ("#{dirname}") do
   its('owner') {should eq 'root'}
   its('group') {should eq 'root'}
   its('mode') {should cmp '0755'}
  end
end
