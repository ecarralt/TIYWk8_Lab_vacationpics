class PhotosController < ApplicationController

  def new
    @photo = Photo.new
    @vacation = Vacation.find_by id: 1

  end

  def create
    photo = Photo.new
    photo.title = params[:photo][:title]
    photo.location = params[:photo][:location]
    photo.latitude = params[:photo][:latitude]
    photo.longitude = params[:photo][:longitude]
    photo.vacation_id = params[:photo][:vacation_id]
    photo.photofile = params[:photo][:photofile]

    if photo.save
      redirect_to home_path
    else
      redirect_to new_photo_path, notice: "Error, please enter info in all the fields!"
    end

  end


end
