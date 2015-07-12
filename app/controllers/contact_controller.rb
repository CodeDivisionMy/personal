class ContactController < ApplicationController
  def new
  end

  def create
    #collecting data from form
    form_data = { name: params[:name], email: params[:email], body: params[:body] }
    #this sends email
    ContactMailer.contact_form(form_data).deliver

    redirect_to root_path
  end
end
