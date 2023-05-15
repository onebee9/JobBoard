class CompanyController < ApplicationController
  def index
    render json: Company.all
  end

  def show
    render json: company
  end

  def create
    company = JobPost.new(company_params)
    render json: company
  end

  def update
    company.assign_attributes company_params
    render json: company, status: :ok
  end

  private

  def company
    @company ||= Company.find params[:id]
  end

  def company_params
    params.require(:companies).permit(
      :industry,
      :location,
      :name,
      :size,
      :website
    )
  end
end
