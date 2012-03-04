require 'spec_helper'

describe Profiler do
  subject { Profiler.get_profiles_from_cucumber_yml_file }
  it 'should list all available profiles' do
    subject.should == ['google', 'yahoo']
  end
end
