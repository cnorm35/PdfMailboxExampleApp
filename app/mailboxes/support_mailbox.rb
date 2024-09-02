class SupportMailbox < ApplicationMailbox
  def process
    user_id = mail.to.first.split('@').first.split('+').last
    user = User.find_by(uuid: user_id)
    # Handle the email with the extracted user information
  end
end
