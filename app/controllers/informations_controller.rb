class InformationsController < ApplicationController
  def index
  end
  
  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      InformationMailer.information_mail(@information).deliver
      redirect_to root_path
    else
      render :new
    end
  end

private

  def information_params
    params.require(:information).permit(:name, :name_spell, :birthdate, :email, :motivation)
  end

end
