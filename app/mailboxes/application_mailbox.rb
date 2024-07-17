class ApplicationMailbox < ActionMailbox::Base
  # routing /pdf/i => :pdf
  routing all: :pdf
end
