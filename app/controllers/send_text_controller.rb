class SendTextController < ApplicationController
  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = ""
    twilio_token = "foober"
    twilio_phone_number = "3477652775"

  end
end
