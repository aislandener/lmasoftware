class Fornecedor < ActiveRecord::Base

	has_many :telefone_fornecedors

	scope :por_nome, ->(nome){
		where('nome LIKE ?',"%#{nome}%")
	}

end
