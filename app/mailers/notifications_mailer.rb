class NotificationsMailer < ActionMailer::Base
  default from: "from@example.com"
  default :to => "aki.onetime@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Webページからのお問い合わせ #{message.subject}")
  end
end


