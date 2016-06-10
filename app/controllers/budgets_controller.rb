class BudgetsController < ApplicationController
  def index
    @budgets = Budget.all
  end

  def show
    @budget = Budget.find(params[:id])
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new
    @budget.income = params[:income]
    @budget.needs = 0.5*@budget.income
    @budget.wants = 0.3*@budget.income
    @budget.savings = 0.2*@budget.income



    @budget.user_id = params[:user_id]

    if @budget.save
      redirect_to "/budgets", :notice => "Budget created successfully."
    else
      render 'new'
    end
  end

  def edit
    @budget = Budget.find(params[:id])
  end

  def update
    @budget = Budget.find(params[:id])

    @budget.savings = params[:savings]
    @budget.wants = params[:wants]
    @budget.needs = params[:needs]
    @budget.income = params[:income]
    @budget.user_id = params[:user_id]

    if @budget.save
      redirect_to "/budgets", :notice => "Budget updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @budget = Budget.find(params[:id])

    @budget.destroy

    redirect_to "/budgets", :notice => "Budget deleted."
  end
end
