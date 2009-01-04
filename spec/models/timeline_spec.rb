require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Timeline do
  describe :find_profanity_by_user_id do
    it "should find profanity for a user_id" do
      # user_id = 'gilesgoatboy'
      # @tweet  = mock('Is this a good fucking test?')
      # Timeline.should_receive(:find_by_user_id).with(user_id).and_return([@tweet])
      # Timeline.find_profanity_by_user_id(user_id)
    end 
  end
  
  describe :find_by_user_id do
    it "should find status items" do
      Timeline.send(:find_by_user_id, 'retr0h').size.should == TwitterClientCount
    end
    
    it "should throw error with invalid user" do
      lambda { Timeline.send(:find_by_user_id, "invalid_#{Time.now.to_i}").should raise_error(Twitter::RESTError) }
    end
  end
end
