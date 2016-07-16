class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @newuser = User.new
    @newuser.first_name = params[:user][:first_name]
    @newuser.last_name = params[:user][:last_name]
    @newuser.email = params[:user][:email]
    @newuser.location = params[:user][:location]
    @newuser.username = params[:user][:username]
    @newuser.password = params[:user][:password]
    @newuser.password_confirmation = params[:user][:password_confirmation]

    puts @newuser.inspect

    if @newuser.save
      session[:user_id] = @newuser.id
      redirect_to home_path, notice: "Welcome, #{@newuser.first_name}! Start sharing your vacation pictures!"
    else
      redirect_to new_user_path, notice: "Please fill out your full name, email, location, username, and password"
    end

  end



end
