require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe :profanity_prospector_configuration_file do
  it "should return path to profanity config file" do
    profanity_prospector_configuration_file.should == "#{Rails.root}/config/profanity.yml"
  end
end

describe :profanity_prospector_configuration do
  it "should return a Hash" do
    profanity_prospector_configuration.should be_is_a(Hash)
  end
end

describe :ProfanityProspector do
  it "should create a constant" do
    defined?(ProfanityProspector).should == "constant"
  end
end
