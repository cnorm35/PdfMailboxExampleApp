require "test_helper"

class PdfMailerTest < ActionMailer::TestCase
  test "user_not_found" do
    mail = PdfMailer.user_not_found
    assert_equal "User not found", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "missing_attachment" do
    mail = PdfMailer.missing_attachment
    assert_equal "Missing attachment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "bad_attachment_format" do
    mail = PdfMailer.bad_attachment_format
    assert_equal "Bad attachment format", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "import_complete" do
    mail = PdfMailer.import_complete
    assert_equal "Import complete", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
