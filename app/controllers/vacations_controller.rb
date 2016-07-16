class VacationsController < ApplicationController

  def home

    @vacations = Vacation.all
    @photos = Photo.all

  end


  # def new
  #
  # end
  #
  # def create
  #
  # end


end
