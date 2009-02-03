class RankingsController < ApplicationController
  def create
    ### Pseudo CRUD.
    redirect_to ranking_url(params[:user_id])
  end
  
  def index
  end

  def show
    profanity = Timeline.find_profanity_by_user_id(params[:id])
    @rating = RatingsText[profanity.rate.rateify.to_sym]
  end
end
