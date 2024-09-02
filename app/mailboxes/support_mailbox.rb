class SupportMailbox < ApplicationMailbox
  def process
    # support-123123123@inbound.yoursite.com
    # user_id = mail.to.first.split('@').first.split('-').last
    # user_id = 123123123
    user = User.find_by(uuid: user_id)
    # Handle the email with the extracted user information
  end

  private

  def user_id
    inbound_matches = mail.recipients.find { |recipient| /support-(.+)@/i.match?(recipient) }
    inbound_matches[/support-(.+)@/i, 1]
  end
end
