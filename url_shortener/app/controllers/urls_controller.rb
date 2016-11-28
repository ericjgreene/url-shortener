class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to urls_path
  end

  def show
    @url = Url.find(params[:id])

    redirect_to @url.original 
  end
private
  def url_params
    params.require(:url).permit(:original)
  end
end
