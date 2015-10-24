class Cliente < ActiveRecord::Base

	has_many :telefone_clientes

	scope :por_nome, -> (nome){
		where("nome LIKE ?","%#{nome}%")
	}

end
