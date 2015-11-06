class ContasPagar < ActiveRecord::Base
  belongs_to :Fornecedor


  self.per_page = 5
end
