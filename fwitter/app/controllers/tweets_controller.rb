class TweetsController < ApplicationController
  # 7 RESTFUL actions and their cooresponding Rails controller methods

  # GET '/tweets', goes to tweets_controller index and displays all of the tweets
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new

  end

  def create
    tweet = Tweet.create(content: params[:content], user_id: params[:user_id])
    redirect_to tweet_path(tweet)
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.update(content: params[:content], user_id: params[:user_id])
    redirect_to tweet_path(tweet)
  end
end
