class MessageMailer < ApplicationMailer
  default from: "no-reply@ajcanaria.com"
  default to: "ajcanaria@gmail.com" # <--- Just for testing purposes

  def new_message(message)
    @message = message
    mail(to: 'carl@tabrific.com', subject: "New Website Message From #{message.name}")
  end
end
