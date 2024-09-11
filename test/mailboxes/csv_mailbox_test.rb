require "test_helper"

class CsvMailboxTest < ActionMailbox::TestCase
  # test "receive mail" do
  #   receive_inbound_email_from_mail \
  #     to: '"someone" <someone@example.com>',
  #     from: '"else" <else@example.com>',
  #     subject: "Hello world!",
  #     body: "Hello?"
  # end
  test 'it processes a CSV attachment' do
    inbound_email = create_inbound_email_from_fixture("csv_email.eml")
    assert_difference 'User.count', 1 do
      CsvMailbox.new(inbound_email).process
    end
  end
end
