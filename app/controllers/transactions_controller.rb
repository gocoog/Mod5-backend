class TransactionsController < ApplicationController
    before_action :find_transaction, only:[:show, :update]

    def index
        @transactions = Transaction.all
        render :json => @transactions
    end

    def show
        render :json => @transaction
    end

    def create
        if current_user
            @transaction = Transaction.create(transaction_params)
            render json: @transaction
        else
            render json: { errors: @transaction.errors.full_messages }
        end
    end

    def update
        @transaction.update(transaction_params)
        @transaction.save
        render json: @transaction
    end

    private

    def transaction_params
        params.require(:transaction).permit(:wallet_id, :transaction_type, :amount, :transaction_desc)
    end

    def find_transaction
        @transaction = Transaction.find_by(id: params[:id])
    end
end
