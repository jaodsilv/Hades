module ApplicationHelper
	def sexos
		['Masculino', 'Feminino']
	end

	def estados_civis
		['Solteiro', 'Casado', 'Divorciado', 'Viuvo']
	end

	def estados
		options_for_select(['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE',
			'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'], 'SP')
	end

	def documentos
		['RG', 'RNE']
	end

	def cores
		['Branca', 'Parda', 'Preta', 'Amarela', 'Indigena', 'Desconhecida']
	end

	def categorias_idade
		['Maior', 'Menor']
	end

	def sim_nao
		[['sim', true], ['não', false]]
	end

	def nao_sim
		[['não', false], ['sim', true]]
	end

	def ignora_sim_nao
		[['ignora', nil], ['sim', true], ['não', false]]
	end
end
