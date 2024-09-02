class ApplicationMailbox < ActionMailbox::Base
  routing /^support@/i => :support
  routing /^sales@/i => :sales

  routing /pdf/i => :pdf
  routing /guess-my-age/i => :guess_my_age
  routing /csv/i => :csv
  routing /next-up/i => :next_up
end
