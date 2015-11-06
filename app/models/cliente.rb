class Cliente < ActiveRecord::Base

	has_many :telefone_clientes

	scope :por_nome, -> (nome){
		where("nome LIKE ?","%#{nome}%")
	} 

	self.per_page = 5

end
