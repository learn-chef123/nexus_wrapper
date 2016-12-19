# # encoding: utf-8

# Inspec test for recipe nexus_wrapper::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html


describe user('nexus') do
  it { should exist }
  its('group') { should eq 'nexus' }
  its('home') { should eq '/nexus' }
end

describe file('/usr/local/nexus') do
 it { should exist }
end

describe file('/usr/local/nexus/current') do
  its('type') { should eq 'link' }
  it { should be_symlink }
  it { should_not be_file }
end

describe file('/opt/mount1/nexus/sonatype-work/nexus') do
 it { should exist }
end

#%r{} is equivalent to the /.../ notation
describe file('/usr/local/nexus/current/nexus-2.12.0-01/conf/nexus.properties') do
  its('content') { should match(%r{^nexus-work=/opt/mount1/nexus/sonatype-work/nexus}) }
end

describe file('/usr/local/nexus/shared/pids/nexus.pid') do
 it { should exist }
end
