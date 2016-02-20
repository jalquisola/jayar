class InquiryMailer < ApplicationMailer

  def send_email(inquiry_id)
    @inquiry = Inquiry.where(id: inquiry_id).first

    if @inquiry
      mail(to: ENV['RECIPIENT_EMAIL'],
         subject: @inquiry.unit_type,
         from: @inquiry.email)
    end
  end

end
