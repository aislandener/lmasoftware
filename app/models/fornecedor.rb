class Fornecedor < ActiveRecord::Base

	has_many :telefone_fornecedors

	scope :por_nome, ->(nome){
		where('nome LIKE ?',"%#{nome}%")
	}

	self.per_page = 5

end
