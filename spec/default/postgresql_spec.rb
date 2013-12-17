require 'spec_helper'

describe package('postgresql93') do
  it { should be_installed }
end

describe service('postgresql-9.3') do
  it { should be_enabled }
  it { should be_running }
end

describe user('postgres') do
  it { should exist }
end

describe port(5432) do
  it { should be_listening }
end

