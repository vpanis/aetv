class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :download]

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
    @photo = Photo.create(photo_params)
  end

  def download
    send_file(
      "#{Rails.root}/app/assets/images/photos/#{rails_blob_path(@photo.image)[-13..-1]}",
      filename: "#{rails_blob_path(@photo.image)[-13..-1]}",
      type: "application/jpg"
    )
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end
