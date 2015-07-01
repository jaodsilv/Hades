class ComprasController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]
    @cadastro = Cadastro.find(@cadastro_id)

    @compra = Compra.new
    @compra.item_compras.build

    @css = css
  end

  def create
    @cadastro_id = params[:cadastro_id]
    @compra = Compra.new(compra_params)
    @cadastro = Cadastro.find(@cadastro_id)
    if @compra.save
      @cadastro.compra = @compra
      @cadastro.save
      # TODO: Redirecionar para a tela de nota fiscal
      if (@cadastro.PNS?)
        redirect_to new_pagamento_path(@cadastro_id)
      else
        redirect_to root_path
      end
    else
      @css = css
      render 'new'
    end
  end

  private
  def compra_params
    params.require(:compra).permit(:remocao_local_falecimento, :local_remocao, :endereco_remocao,
                                   :observacoes, :valor_total,
                                   item_compras_attributes: [
                                      :nome, :enabled, :unidade_de_medida, :dimensoes,
                                      :tipo, :quantidade, :preco, :sinal
                                   ])
  end

  def css
    {
      barra_filtro: "visited first col-sm-2",
      barra_contratante: "visited col-sm-2",
      barra_falecido: "visited col-sm-2",
      barra_obito: "previous visited col-sm-1",
      barra_produtos: "active col-sm-1",
      barra_pagamento: "next col-sm-1",
      barra_notas: "col-sm-2",
    }
  end
end
