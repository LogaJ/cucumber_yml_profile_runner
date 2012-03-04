require 'spec_helper'

describe Profiler do
  subject { Profiler.list_of_profiles }
  it 'should list all available profiles' do
    subject.should == [:google, :yahoo]
  end
end
