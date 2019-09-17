class ImageUrlsController < ApplicationController
  def index
    @image_urls = ImageUrl.all
  end

  def show
    @image_url = ImageUrl.find(params[:id])
  end

  def new
    @image_url = ImageUrl.new
  end

  def create
    @image_url = ImageUrl.new(url_params)
     # puts 'ddddddddddddddddd'
     # puts @image_url.inspect
    if @image_url.save
      redirect_to @image_url
    else
      # render does not reissue a request (link_to does)
      render 'new'

    end
  end

  private

  def url_params
    params.require(:image_url).permit(:url)
  end
end
