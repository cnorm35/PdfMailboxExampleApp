class ApplicationMailbox < ActionMailbox::Base
  routing /pdf/i => :pdf
  routing /guess-my-age/i => :guess_my_age
  # routing all: :pdf
end
