class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_form(form_data)
    @name = form_data[:name]
    @email = form_data[:email]
    @body = form_data[:body]

    mail(from: @email, to: 'joshteng@me.com', subject: 'Someone emailed me from my homepage!')
  end
end
