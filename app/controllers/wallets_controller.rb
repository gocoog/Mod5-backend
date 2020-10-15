class WalletsController < ApplicationController
    before_action :find_wallet, only:[:show, :update]

    def index
        @wallets = Wallet.all
        render :json => @wallets
    end

    def show
        render :json => @wallet
    end

    def create
        if current_user
            @wallet = Wallet.create(wallet_params)
            render json: @wallet
        else
            render json: { errors: @wallet.errors.full_messages }
        end
    end

    def update
        @wallet.update(wallet_params)
        @wallet.save
        render json: @wallet
    end

    private

    def wallet_params
        params.require(:wallet).permit(:user_id, :amount)
    end

    def find_wallet
        @wallet = Wallet.find_by(id: params[:id])
    end
end
