class AccountTransactionsController < ApplicationController
  before_action :set_account_transaction, only: %i[ show edit update destroy ]

  # GET /account_transactions or /account_transactions.json
  def index
    @account_transactions = AccountTransaction.all
  end

  # GET /account_transactions/1 or /account_transactions/1.json
  def show
  end

  # GET /account_transactions/new
  def new
    @account_transaction = AccountTransaction.new
  end

  # GET /account_transactions/1/edit
  def edit
  end

  # POST /account_transactions or /account_transactions.json
  def create
    @account_transaction = AccountTransaction.new(account_transaction_params)

    respond_to do |format|
      if @account_transaction.save
        format.html { redirect_to account_transaction_url(@account_transaction), notice: "Account transaction was successfully created." }
        format.json { render :show, status: :created, location: @account_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_transactions/1 or /account_transactions/1.json
  def update
    respond_to do |format|
      if @account_transaction.update(account_transaction_params)
        format.html { redirect_to account_transaction_url(@account_transaction), notice: "Account transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @account_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_transactions/1 or /account_transactions/1.json
  def destroy
    @account_transaction.destroy

    respond_to do |format|
      format.html { redirect_to account_transactions_url, notice: "Account transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_transaction
      @account_transaction = AccountTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_transaction_params
      params.require(:account_transaction).permit(:amount, :transaction_type, :bank_account_id, :transaction_number)
    end
end
