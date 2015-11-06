class TelefoneCliente < ActiveRecord::Base
  belongs_to :Cliente

  self.per_page = 5
end
