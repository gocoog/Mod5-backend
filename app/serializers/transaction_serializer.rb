class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :transaction_type, :amount, :transaction_desc
  has_one :wallet
end
