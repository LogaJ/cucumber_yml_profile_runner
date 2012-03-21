require 'spec_helper'

describe Profiler do
  context ".get_profiles_from_cucumber_yml_file"

  list_of_profiles = Profiler.new.get_profiles_from_cucumber_yml_file

  it 'should list all available profiles', :wip => true do
    list_of_profiles.should == ['google', 'yahoo']
  end

  context ".run_tests" do

    subject {Profiler.run_tests 'google'}
    it 'should run tests with profile and save results into log file' do
      subject.should be_true
    end
  end

  context ".display_test_results" do

    subject { Profiler.display_test_results }
    it 'should save the stdout into a log file' do
      subject.should include "Feature: Using web interface to run profiles\n"
    end
  end
end
