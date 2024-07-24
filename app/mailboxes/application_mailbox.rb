class ApplicationMailbox < ActionMailbox::Base
  routing /pdf/i => :pdf
  routing /guess-my-age/i => :guess_my_age
  routing /csv/i => :csv
  routing /next-up/i => :next_up
  # routing all: :pdf
end
