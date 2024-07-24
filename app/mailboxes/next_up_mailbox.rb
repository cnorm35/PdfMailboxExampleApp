class NextUpMailbox < ApplicationMailbox
  def process
    NextUpMailer.with(to: mail.from.first, event: next_up).response.deliver_later
  end

  private

  def next_up
    @event ||= Event.upcoming.first
  end
end
