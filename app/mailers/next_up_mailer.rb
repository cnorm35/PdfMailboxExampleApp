class NextUpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.next_up_mailer.response.subject
  #
  def response
    @event = params[:event]
    mail to: params[:to]
  end
end
