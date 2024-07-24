class GuessMyAgeMailbox < ApplicationMailbox
  def process
    response = HTTParty.get(agify_url, { query: { name: name }})
    age = response['age']
    GuessMyAgeMailer.with(to: mail.from.first, guess: age, name: name).response.deliver_later
  end

  private

  def agify_url
   "https://api.agify.io"
  end

  def name
    mail[:from].display_names.first.presence || mail.from.first.split("@").first
  end
end
