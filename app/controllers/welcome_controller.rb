class WelcomeController < ApplicationController
  before_action :authenticate_user!, exclude: [:index]
  def index
    render json: {
      message: 'welcome'
    }
  end

  def admin
    render json: {
      message: 'admin',
      user: current_user
    }
  end

  def very_admin
    render json: {
      message: 'very admin',
      user: current_user
    }
  end
end
