class VacationsController < ApplicationController

  def home

    @vacations = Vacation.all
    @photos = @current_user.photos
    # @photos = @current_user.vacations.photos

  end

  def new

    @vacation = Vacation.new

  end

  def create
    @newvacation = Vacation.new
    @newvacation.name = params[:vacation][:name]
    @newvacation.center_location = params[:vacation][:center_location]
    @newvacation.user_id = @current_user.id

    results = JSON.parse(Http.get("http://locationiq.org/v1/search.php?key=7b515e5d2f0389b8972f&format=json&q=#{CGI::escape(@newvacation.center_location)}").body)

    vacationlocation= results.first
    @newvacation.ctr_loc_lat = vacationlocation["lat"]
    @newvacation.ctr_loc_lon = vacationlocation["lon"]

    puts @newvacation.inspect

    if @newvacation.save
      redirect_to home_path, notice: "Your vacation: #{@newvacation.name} has been created"
    else
      redirect_to new_vacation_path, notice: "Please fill out all the info."
    end

  end


end
