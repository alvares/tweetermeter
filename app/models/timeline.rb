class Timeline
  class << self
    def find_profanity_by_user_id(user_id)
      find_by_user_id(user_id).profanity
    end

    private

    def find_by_user_id(user_id)
      TwitterClient.timeline_for(:user, :id => user_id, :count => TwitterClientCount)
    end
  end
end
