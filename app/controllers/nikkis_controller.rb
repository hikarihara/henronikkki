  class NikkisController < ApplicationController

    before_action :move_to_index, except: :index

    def index
      @nikkis = Nikki.includes(:user).page(params[:page]).per(3).order("created_at DESC")

    end

    def new
    end

    def create
      Nikki.create(image: nikki_params[:image], text: nikki_params[:text], user_id: current_user.id)
    end

    def destroy
      nikki = Nikki.find(params[:id])
      nikki.destroy if nikki.user_id == current_user.id
    end

    def edit
      @nikki = Nikki.find(params[:id])
    end

    def update
      nikki = Nikki.find(params[:id])
      if nikki.user_id == current_user.id
        nikki.update(nikki_params)
      end
    end

    private
    def nikki_params
      params.permit(:image, :text)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
  end
