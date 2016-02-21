class InquiryMailer < ApplicationMailer

  def send_email(inquiry_params)
    mail(to: ENV['RECIPIENT_EMAIL'],
       subject: inquiry_params[:unit_type],
       from: inquiry_params[:email])
  end

end
