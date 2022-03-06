require 'debug' 
class AdresController < ApplicationController
  before_action: :get_user, only: [:edit, :update, :destroy]

  def index
    @model = Home.all
  end

  def new
  end

  def create
    @adres = Home.new(user_params)
    if @adres.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @adres.update(user_params)
      redirect_to root_path
    else
      render 'edit'
    end  
  end
  
  def destroy
    # debugger
    @adres.destroy
    redirect_to root_path  
  end



  private
  def get_user
    @adres = Home.find(params.require(:id))
  end

  def user_params
    params.require(:home).permit(:name, :surname, :email)
  end
end
