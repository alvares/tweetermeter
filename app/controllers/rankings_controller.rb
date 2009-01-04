class RankingsController < ApplicationController
  def index
    profanity = Timeline.find_profanity_by_user_id(params['user_id'])
    @rating = profanity.rate if profanity
  end
end
