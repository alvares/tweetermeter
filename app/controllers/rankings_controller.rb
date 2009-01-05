class RankingsController < ApplicationController
  def index
  end
  
  def create
    profanity = Timeline.find_profanity_by_user_id(params['user_id'])
    @rating   = profanity.rate
    respond_to do |format|
      format.js {}
    end
  rescue Twitter::RESTError
  end
end
