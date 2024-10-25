class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "Usuario creado con éxito."
    else
      render :new
    end
  end
  
  class User < ApplicationRecord
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :role, :location)
  end
end
