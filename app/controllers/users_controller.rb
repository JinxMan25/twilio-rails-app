class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      render text: "WE'll send you text man"

     client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])

     client.account.sms.messages.create(

       from: TWILIO_CONFIG['from'],
       to: @user.phone,
       body: "THANKS PLZ REPLY HALLO"

     )
    else
      render :new
    end
  end
end
