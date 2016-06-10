class SpendsController < ApplicationController
  def index
    @spends = Spend.all
  end

  def show
    @spend = Spend.find(params[:id])
  end

  def new
    @spend = Spend.new
  end

  def create
    @spend = Spend.new
    @spend.classification = params[:classification]
    @spend.user_id = params[:user_id]
    @spend.notes = params[:notes]
    @spend.labels = params[:labels]
    @spend.account_name = params[:account_name]
    @spend.category = params[:category]
    @spend.trans = params[:trans]
    @spend.amount = params[:amount]
    @spend.original_description = params[:original_description]
    @spend.description = params[:description]
    @spend.date = params[:date]

    if @spend.save
      redirect_to "/spends", :notice => "Spend created successfully."
    else
      render 'new'
    end
  end

  def edit
    @spend = Spend.find(params[:id])
  end

  def update
    @spend = Spend.find(params[:id])

    @spend.classification = params[:classification]
    @spend.user_id = params[:user_id]
    @spend.notes = params[:notes]
    @spend.labels = params[:labels]
    @spend.account_name = params[:account_name]
    @spend.category = params[:category]
    @spend.trans = params[:trans]
    @spend.amount = params[:amount]
    @spend.original_description = params[:original_description]
    @spend.description = params[:description]
    @spend.date = params[:date]

    if @spend.save
      redirect_to "/spends", :notice => "Spend updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @spend = Spend.find(params[:id])

    @spend.destroy

    redirect_to "/spends", :notice => "Spend deleted."
  end
end
