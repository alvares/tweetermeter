require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Rating do
  describe :rate do
    ### TODO: add more tests.
    it "should return a rating" do
      require 'ruby_ext'
      [1, 1, 2].rate.should == 'PG-13'
    end
  end
end
