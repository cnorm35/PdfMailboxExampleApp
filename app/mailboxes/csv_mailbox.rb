class CsvMailbox < ApplicationMailbox
  require 'csv'

  def process
    debugger
    attachment_data = mail.attachments.first.body.decoded

    CSV.parse(attachment_data, headers: true) do |row|
      email = row['Email']
      first_name = row['First Name']
      last_name = row['Last Name']
      user_attributes = { first_name: first_name, last_name: last_name, email: email, password: Devise.friendly_token }
      User.create(user_attributes)
    end
  end
end
