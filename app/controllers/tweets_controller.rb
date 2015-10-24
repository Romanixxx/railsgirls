class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    tweet_params = params.require(:tweet).permit(:feed)
    @tweet = Tweet.new tweet_params
    @tweet.save
    redirect_to tweets_path
  end
end