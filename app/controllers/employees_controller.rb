class EmployeesController < ApplicationController

  before_action :set_company, only: :create

  def create
    @employee = Employee.new(employee_params)
    @employee.company = @company
    if @employee.save
      redirect_to company_path @employee.company.id
    else
      redirect_to company_path(params[:company_id])
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to company_path(params[:company_id])
  end


private
  def set_company
    @company = Company.find(params[:company_id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end


end
