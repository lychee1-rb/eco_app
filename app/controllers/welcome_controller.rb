class WelcomeController < ApplicationController
  def index
  end

  def show
    @result = User.last
  end

  def count
    @users = User.all
    @user = User.new(counter: params[:key])
    if @user.save
      render "index"
    end
  end

  def second
  end

end
