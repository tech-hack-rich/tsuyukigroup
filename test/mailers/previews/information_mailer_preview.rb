# Preview all emails at http://localhost:3000/rails/mailers/information_mailer
class InformationMailerPreview < ActionMailer::Preview
  def inquiry
    information = Information.new(name: "侍 太郎", name_spell: "サムライ　タロウ", birthdate:"1998/01/25", email:"test@test", motivation: "よろしくお願いします")

    InformationMailer.information_mail(information)
  end
end
