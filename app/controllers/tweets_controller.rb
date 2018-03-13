class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def create
    tweet_params = params.require(:tweet).permit!
    Tweet.create!(tweet_params)
    redirect_to action: :new
  end
end
