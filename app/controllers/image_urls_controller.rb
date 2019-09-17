class ImageUrlsController < ApplicationController
  def index
    @image_urls = ImageUrl.all.order(created_at: :desc)
  end

  def show
    @image_url = ImageUrl.find(params[:id])
  end

  def new
    @image_url = ImageUrl.new
  end

  def create
    @image_url = ImageUrl.new(url_params)
    if @image_url.save
      redirect_to @image_url
    else
      render 'new'

    end
  end

  private

  def url_params
    params.require(:image_url).permit(:url)
  end
end
