require "test_helper"

class CsvMailboxTest < ActionMailbox::TestCase

  test 'it processes a CSV attachment from source automatically' do
    assert_difference 'User.count', 2 do
      receive_inbound_email_from_source(File.read("./test/fixtures/files/csv_import.eml"))
    end
  end

  test 'it processes a CSV attachment from source manually' do
    inbound_email = create_inbound_email_from_source(File.read("./test/fixtures/files/csv_import.eml"))
    assert_difference 'User.count', 2 do
      CsvMailbox.new(inbound_email).process
    end
  end

  test 'it creates a bounced inbound email from source' do
    inbound_email = create_inbound_email_from_source(File.read("./test/fixtures/files/csv_import.eml"), status: :bounced)
  end

  test 'it processes a CSV attachment from mail automatically' do
    assert_difference 'User.count', 2 do
      receive_inbound_email_from_mail do |m|
        m.attachments['import.csv'] = File.read("./test/fixtures/csv_users.csv")
        m.from 'user@actionmailbox.pro'
        m.to 'csv@actionmailbox.pro'
        m.body 'Not super important'
      end
    end
  end

  test 'it processes a CSV attachment from mail manually' do
    inbound_email = create_inbound_email_from_mail do |m|
      m.attachments['import.csv'] = File.read("./test/fixtures/csv_users.csv")
      m.from 'user@actionmailbox.pro'
      m.to 'csv@actionmailbox.pro'
      m.body 'Not super important'
    end
    assert_difference 'User.count', 2 do
      CsvMailbox.new(inbound_email).process
    end
  end

end
