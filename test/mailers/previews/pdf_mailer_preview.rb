# Preview all emails at http://localhost:3000/rails/mailers/pdf_mailer
class PdfMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/pdf_mailer/user_not_found
  def user_not_found
    PdfMailer.user_not_found
  end

  # Preview this email at http://localhost:3000/rails/mailers/pdf_mailer/missing_attachment
  def missing_attachment
    PdfMailer.missing_attachment
  end

  # Preview this email at http://localhost:3000/rails/mailers/pdf_mailer/bad_attachment_format
  def bad_attachment_format
    PdfMailer.bad_attachment_format
  end

  # Preview this email at http://localhost:3000/rails/mailers/pdf_mailer/import_complete
  def import_complete
    PdfMailer.import_complete
  end

end
