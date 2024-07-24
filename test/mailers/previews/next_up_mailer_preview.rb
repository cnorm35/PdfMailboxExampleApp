# Preview all emails at http://localhost:3000/rails/mailers/next_up_mailer
class NextUpMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/next_up_mailer/response
  def response
    NextUpMailer.response
  end

end
