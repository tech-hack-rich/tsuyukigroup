class InformationMailer < ApplicationMailer
  def information_mail(information)
    @information = information
    mail to: ENV['INFORMATION_MAIL'], subject: "採用エントリー"
  end
end
