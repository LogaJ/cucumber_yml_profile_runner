require 'spec_helper'

describe Profiler do
  context ".get_profiles_from_cucumber_yml_file"

  subject { Profiler.get_profiles_from_cucumber_yml_file }
  it 'should list all available profiles' do
    subject.should == ['google', 'yahoo']
  end

  context ".run_tests" do

    subject {Profiler.run_tests 'google'}
    it 'should run tests with profile', :wip => true do
      subject.should be_true
    end
  end
end
