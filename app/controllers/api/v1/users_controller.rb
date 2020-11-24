module Api::V1
  class UsersController < ApiController
    before_action :load_users, only: %i[update destroy]
    
    def index
      @users = User.all
    end

    def create
      @user = User.new
      @user.attributes = user_params
      save_user!
    end

    def update
      @user.attributes = user_params
      save_user!
    end

    def destroy
      @user.destroy!
    rescue StandardError
      render_error(fields: @user.errors.messages)
    end

    private

    def user_params
      return {} unless params.has_key?(:user)

      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end

    def load_user
      @user = User.find(params[:id])
    end

    def save_user!
      @user.save!
      render :show
    rescue StandardError
      render_error(fields: @user.errors.messages)
    end

  end
end
