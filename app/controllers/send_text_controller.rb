class SendTextController < ApplicationController
  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "AC633748333235e905dd3fb0f904ad4b31"
    twilio_token = "5a07271a4f44fdaee8ee43fe0a84de78"
    twilio_phone_number = "3477652775"

    @twilio_client = Twilio::REST::Client.new twilio_sid,twilio_token

  end
end
