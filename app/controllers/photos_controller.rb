require 'cgi'

class PhotosController < ApplicationController

  def new
    @photo = Photo.new
    # @vacation = Vacation.find_by id: 1

  end

  def create
    @photo = Photo.new
    @photo.title = params[:photo][:title]
    @photo.location = params[:photo][:location]
    @photo.vacation_id = params[:photo][:vacation_id]
    @photo.photofile = params[:photo][:photofile]


    results = JSON.parse(Http.get("http://locationiq.org/v1/search.php?key=7b515e5d2f0389b8972f&format=json&q=#{CGI::escape(@photo.location)}").body)

    photolocation= results.first

    if results != []
      @photo.latitude = photolocation["lat"]
      @photo.longitude = photolocation["lon"]
      if @photo.save
        redirect_to home_path
      else
        redirect_to new_photo_path, notice: "Error, please enter info in all the fields and remember to upload a pic!"
      end
    else
      flash[:notice] = "Try being more specific on your location so that we can find it"
      render :new
    end
  end

end
