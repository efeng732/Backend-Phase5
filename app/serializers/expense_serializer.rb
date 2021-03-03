class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :month, :category, :price, :description
end
