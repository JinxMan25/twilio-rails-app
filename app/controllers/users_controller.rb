class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      render text: "WE'll send you text man"
    else
      render :new
end
