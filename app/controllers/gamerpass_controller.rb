class GamerpassController < ApplicationController
  def landing
  end

  def signup
    byebug
  end

  private

    def safe_user_params
      params.require(:user).permit(:first, :last, :email, :phone, :location)
    end
end
