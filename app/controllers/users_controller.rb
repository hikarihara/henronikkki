class UsersController < ApplicationController
  def show
      @nickname = current_user.nickname
      @nikkis = current_user.nikkis.page(params[:page]).per(5).order("created_at DESC")
  end
end
