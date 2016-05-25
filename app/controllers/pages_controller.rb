class PagesController < ApplicationController

  def index
  end 

  def create
    @posts = TwitterApi.response params[:city]
    @city = params[:city]
  end 

  def search_tweets
    @tweets = TwitterApi.search_response params[:query]
    @query = params[:query]
  end 

end
