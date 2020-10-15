class WalletSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :user
end
