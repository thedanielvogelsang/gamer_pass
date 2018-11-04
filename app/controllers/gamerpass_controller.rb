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
    user = User.new(safe_user_params)
    if user.save
      user.add_favorite_games(params)
      flash[:message] = "Thank you for signing up to GamerPass, we'll contact you soon about next steps!"
      redirect_to('/')
    else
      flash[:error] = user.errors.first.join(' ')
      redirect_to('/')
    end
  end

  private

    def safe_user_params
      params.require(:user).permit(:first, :last, :email, :phone, :location)
    end
end
