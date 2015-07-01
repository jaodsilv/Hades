module PagamentoHelper
	def tipos_pagamento
		['Crédito', 'Débito', 'Dinheiro']
	end

	def bandeiras
		['Mastercard', 'Visa', 'Cielo']
	end

	def parcelamentos
		['1x', '2x', '3x']
	end
end
