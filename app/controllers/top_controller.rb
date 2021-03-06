class TopController < ApplicationController
  before_action :set_user, only: %i(edit update)

  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end

  def edit
  end


  def update
    if @user.update_attributes(user_params)
      redirect_to :root
    else
      render action: :edit
    end

    def set_user
      @user = User.find_by(id: params[:id])
    end
  end
end
