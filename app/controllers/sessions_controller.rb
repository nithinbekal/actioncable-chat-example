class SessionsController < ApplicationController
  def create
    current_username = params[:session][:username]
    redirect_to messages_path
  end
end
