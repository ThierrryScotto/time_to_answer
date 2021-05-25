class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action [:edit, :update], only: [:find_admin]

  def index
    @admins = Admin.all
    render json: @admins
  end

  def edit
    render json: @admin
  end

  def update
    params_admin = params.require(:admin).permit(:email, :password, :password_confirmation)

    @admin = admin.update(params_admin)
    render json: @admin
  end

  private

  def find_admin
    @admin = Admin.find_by(id: params[:id])
  end
end
