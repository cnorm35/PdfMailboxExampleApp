class PdfMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pdf_mailer.user_not_found.subject
  #
  def user_not_found
    @greeting = "User Not Found"
    @to = params[:to]

    mail to: @to
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pdf_mailer.missing_attachment.subject
  #
  def missing_attachment
    @greeting = "Missing Attachment"
    @to = params[:to]

    mail to: @to
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pdf_mailer.bad_attachment_format.subject
  #
  def bad_attachment_format
    @greeting = "Bad Attchment Format"
    @to = params[:to]

    mail to: @to
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pdf_mailer.import_complete.subject
  #
  def import_complete
    @greeting = "Import Complete"
    @to = params[:to]

    mail to: @to
  end
end
