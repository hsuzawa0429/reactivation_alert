class MessagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to patients_index_path
    end
  end
end
