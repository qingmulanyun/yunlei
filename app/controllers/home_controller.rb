class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized , only: [:show]

  def show
  end
end
