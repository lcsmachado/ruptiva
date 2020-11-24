class Api::V1::Users::UsersController < ApiController
  def index; end

  def create; end

  def update; end

  def destroy; end

  private

  def user_params; end

  def load_user
    @user = User.find(params[:id])
  end

  def save_user!; end
end
