class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => t("simple_form.notification.successfully_sent"))
    else
      flash.now.alert = t("simple_form.error_notification.fill_all_fields")
      render :new
    end
  end

end
