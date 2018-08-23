class EmailController < ApplicationController
  def index
  end

  def my_method
    @email = Email.new

    respond_to do |format|
      format.html { redirect_to email_url}
      format.js
    end
  end

end
