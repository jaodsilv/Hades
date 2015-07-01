module PagamentoHelper
	def tipos_pagamento
		['Dinheiro', 'Crédito', 'Débito']
	end

	def bandeiras
		['Mastercard', 'Visa', 'Cielo']
	end

	def parcelamentos
		['1x', '2x', '3x']
	end
end
