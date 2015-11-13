class ContasReceber < ActiveRecord::Base
  belongs_to :Cliente
  usar_como_dinheiro :valor
  self.per_page = 5
end
