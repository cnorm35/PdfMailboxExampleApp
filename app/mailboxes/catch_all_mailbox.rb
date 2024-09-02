class CatchAllMailbox < ApplicationMailbox
  def process
    bounce_with BounceMailer.with(to: mail.from.first).notification.deliver_later
  end
end
