class TreeApplicationsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @tree_application = TreeApplication.new
  end

  def create
    tree_application = TreeApplication.create(tree_application_params)
    redirect_to action: "show", id: tree_application.id
  end

  def show
    @tree_application = TreeApplication.find(params[:id])
  end

  private

  def tree_application_params
    params.require(:tree_application).permit(:first_name,
                                             :last_name,
                                             :address_1,
                                             :address_2,
                                             :city,
                                             :state,
                                             :zip_code,
                                             :country,
                                             :phone_number,
                                             :email,
                                             :rental_property,
                                             :inquiry_date,
                                             :fee_amount,
                                             :referral_source,
                                             :water_agreement)
  end
end
