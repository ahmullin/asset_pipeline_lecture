class TweetsController < ApplicationController
  # 7 RESTFUL actions and their cooresponding Rails controller methods

  # GET '/tweets', goes to tweets_controller index and displays all of the tweets
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    respond_to do |f|
      if @tweet.save
        f.html { redirect_to tweet_path(@tweet) }
        f.json { render json: { content: @tweet.content, id: @tweet.id  } }
      else
        render 'new'
      end
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(content: params[:content], user_id: params[:user_id])
    redirect_to tweet_path(@tweet)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

end
