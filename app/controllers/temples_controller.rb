class TemplesController < ApplicationController

  def index
    @temples = Temple.order('id ASC').limit(20)
  end

  def show
    @temple = Temple.find(params[:id])
  end

  def search
    @temples = Temple.where('temple_name LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
