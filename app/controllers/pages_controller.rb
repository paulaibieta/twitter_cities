class PagesController < ApplicationController

  def index
  end 

  def create
    @posts = TwitterApi.response params[:city]
    @city = params[:city]
  end 

end
