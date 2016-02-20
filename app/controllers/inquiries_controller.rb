class InquiriesController < ApplicationController

  def create
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        InquiryMailer.send_email(@inquiry.id).deliver_now
        format.html do
          redirect_to thanks_path
        end
      else
        format.html do
          flash[:error] = 'Enquiry creation failed.'
          redirect_to root_path
        end
      end
    end

  end

  private
    # Only allow a trusted parameter "white list" through.
    def inquiry_params
      params.require(:inquiry).permit(:email, :unit_type)
    end
end
