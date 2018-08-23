class EmailController < ApplicationController
  def index
  end

  def my_method
    @email = Email.new
    current = Email.find(params[:id])
    current.read = true
    current.save
    respond_to do |format|
      format.html { redirect_to email_url}
      format.js
    end
  end

  def destroy
    Email.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to email_url}
      format.js
    end
  end

end
