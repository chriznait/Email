class Email < ApplicationMailer

	default from: "ruby@rails.com"
	layout 'mailer'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def recepcion
    @greeting = "Hola"

    mail to: "chriz_nait@hotmail.com", :subject => "hola mundo"
  end
end
