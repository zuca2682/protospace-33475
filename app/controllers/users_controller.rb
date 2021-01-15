class UsersController < ApplicationController

  def show
    @user = current_user
    @prototypes = Prototype.all
  end
end
