class PhotosController < ApplicationController
  before_action :set_photo, only: [:show]

  def index
    @photos = Photo.all
  end

  def show
  end

  def before
  end

  def city
  end

  def ceremony
  end

  def cocktail
  end

  def dinner
  end

  def after
  end

  def create
    @photo = Photo.new(photo_params)
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end
