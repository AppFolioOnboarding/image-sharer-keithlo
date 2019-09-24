class ImageUrlsController < ApplicationController
  def index
    @image_urls = if params[:tag_name].present?
      ImageUrl.tagged_with(params[:tag_name]).order(created_at: :desc)
    else
      ImageUrl.all.order(created_at: :desc)
    end
  end

  def show
    @image_url = ImageUrl.find(params[:id])
  end

  def new
    @image_url = ImageUrl.new
  end

  def create
    @image_url = ImageUrl.new(url_params)
    puts @image_url.inspect
    if @image_url.save
      redirect_to @image_url
    else
      render 'new'
    end
  end

  private

  def url_params
    params.require(:image_url).permit(:url, :tag_list, :tag_name)
  end
end
