# Preview all emails at http://localhost:3000/rails/mailers/guess_my_age_mailer
class GuessMyAgeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/guess_my_age_mailer/response
  def response
    GuessMyAgeMailer.response
  end

end
