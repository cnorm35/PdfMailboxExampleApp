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
    # receive_inbound_email_from_mail do |m|
    #   m.attachments['import.csv'] = File.read("./test/fixtures/csv_users.csv")
    #   m.from 'user@actionmailbox.pro'
    #   m.to 'csv@actionmailbox.pro'
    #   m.body
    # end
    # inbound_email = create_inbound_email_from_mail(
    #   attachments: File.read("./test/fixtures/csv_users.csv"),
    #   from: 'user@actionmailbox.pro',
    #   to: 'csv@actionmailbox.pro',
    #   body: 'not super important',
    # )
    # create_inbound_email_from_source(source, status: :processing)
    # create_inbound_email_from_source(File.read("./test/fixtures/files/csv_import.eml"))
    receive_inbound_email_from_source(File.read("./test/fixtures/files/csv_import.eml"))
  end
end
