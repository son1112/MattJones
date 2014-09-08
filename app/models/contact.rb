class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :rides

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nebraska Swoop",
      :to => "jayhopheli@gmail.com",
      :from => %("#{name}" <#{email}>),
      :'reply_to' => %(#{email})
    }
  end
end
