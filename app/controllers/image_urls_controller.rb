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
    if @image_url.save
      # redirect_to @image_url
      redirect_to image_url_path(@image_url.id)
    else
      render 'new'
    end

  end

  def destroy
    @image_url = ImageUrl.find(params[:id])
    @image_url.destroy
    redirect_to image_urls_path
  end

  private

  def url_params
    permitted_params = [:url, :tag_list]
    params.require(:image_url).permit(*permitted_params)

    # params.require(:image_url).require(:tag_name).permit(*permitted_params)
    # current implementation .require() does nothing for us since the params are checked with ImageUrl.save

  end

end


