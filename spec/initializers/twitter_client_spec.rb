require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe :twitter_client_configuration_file do
  it "should return path to twitter config file" do
    twitter_client_configuration_file.should == "#{Rails.root}/config/twitter.yml"
  end
end

describe :twitter_client_configuration do
  it "should return a Twitter::Client" do
    twitter_client_configuration.should be_is_a(Twitter::Client)
  end
end

describe :TwitterClient do
  it "should create a constant" do
    defined?(TwitterClient).should == "constant"
    defined?(TwitterClientCount).should == "constant"
  end
  
  it "should have proper count" do
    TwitterClientCount.should == 100
  end
end
