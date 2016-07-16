class VacationsController < ApplicationController


  def home

    @vacations = Vacation.all

  end

  # def new
  #
  # end
  #
  # def create
  #
  # end


end
