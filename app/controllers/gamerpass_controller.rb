class GamerpassController < ApplicationController
  def landing
    @xbox = System.find_by(name: "Xbox")
    @play = System.find_by(name: "Playstation")
    @nint = System.find_by(name: "Nintendo")
    @pc = System.find_by(name: "PC")
    @appl = System.find_by(name: "Application")
    @tcg = System.find_by(name: "Trading Card Game")
  end

  def signup
    redirect_to "/", status: 202
  end

  private

    def safe_user_params
      params.require(:user).permit(:first, :last, :email, :phone, :location)
    end
end
