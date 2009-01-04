class RankingsController < ApplicationController
  def index
    @stuff = Timeline.find_profanity_by_user_id(params['user_id'])
  end
end
