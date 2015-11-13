class Fornecedor < ActiveRecord::Base


	scope :por_nome, ->(nome){
		where('nome LIKE ?',"%#{nome}%")
	}

	self.per_page = 5

end
