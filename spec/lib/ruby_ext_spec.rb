require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe :Array do
  it "should have included modules" do
    Array.include?(Profanity).should be_true
    Array.include?(Rating).should be_true
  end
end
