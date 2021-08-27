class HomeController < ApplicationController
  def index
    @fri = Friend.all
  end

  def about   
    if user_signed_in?
      @email = current_user.email
      @fri = Friend.where(user_id: current_user.id)
    end
  end
end
