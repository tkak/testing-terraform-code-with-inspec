# encoding: utf-8
# copyright: 2018, The Authors

describe azure_virtual_machine(group_name: 'myResourceGroup', name: 'myVM') do
  its('location') { should eq 'eastus' }
  its('os_type') { should eq 'Linux' }
  it { should have_managed_osdisk }
  its('vm_size') { should eq 'Standard_DS1_v2' }
  it { should have_nics }
  its('password_authentication?') { should be false }
  it { should have_ssh_keys }
  its('environment_tag') { should include 'Terraform Demo' }
end
