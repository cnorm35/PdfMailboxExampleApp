class PdfMailbox < ApplicationMailbox
  before_processing :ensure_user
  before_processing :ensure_attachment
  before_processing :ensure_attachment_format
  def process
    import_document = ImportDocument.new(
      user_id: User.first.id,
      name: mail.subject
    )

    import_document.pdf.attach(
      io: StringIO.new(mail.attachments.first.body.decoded),
      filename: mail.attachments.first.filename
    )

    if import_document.save!
      PdfMailer.with(to: mail.from.first).import_complete.deliver_later
    end
  end

  private

  def ensure_user
    user = User.find_by(email: mail.from.first)
    unless user
      bounce_with PdfMailer.with(to: mail.from.first).user_not_found
    end
  end

  def ensure_attachment
    if mail.attachments.empty?
      PdfMailer.with(to: mail.from.first).missing_attachment.deliver_later
      :abort
    end
  end

  def ensure_attachment_format
    unless mail.attachments.first.content_type.start_with?("application/pdf")
      PdfMailer.with(to: mail.from.first).bad_attachment_format.deliver_later
      :abort
    end
  end
end
