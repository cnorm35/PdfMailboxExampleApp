class GuessMyAgeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.guess_my_age_mailer.response.subject
  #
  def response
    @guess = params[:guess]
    @name = params[:name]
    mail to: params[:to]
  end
end
