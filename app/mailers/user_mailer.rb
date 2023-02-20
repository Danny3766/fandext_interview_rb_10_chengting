class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user_email)
    email = user_email.to_s
    @greeting = "Hi"
    mail to: email, subject: '恭喜您成為Fandnext會員，開始使用我們的服務吧'
  end
end
