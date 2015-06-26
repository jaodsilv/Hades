module ComprasHelper
  def tipos_urna
    @urnas ||= Urna.all
    options_for_select(@urnas.collect{|u| [u.nome,u.nome,{preco: u.elemento_kit.preco}]}, @urnas.first.nome)
  end

  def tipos_revestimento
    @revestimentos ||= Revestimento.all
    options_for_select(@revestimentos.collect{|r| [r.nome,r.nome,{preco:r.elemento_kit.preco}]}, @revestimentos.first.nome)
  end

  def tipos_sepultamento
    tipos = TipoSepultamento.all
    options_for_select(tipos.collect{|t| [t.nome, t.nome,{preco:t.elemento_kit.preco}]}, tipos.first.nome)
  end

  def dimensoes_urnas urna_id = nil
    if urna_id.nil?
      @urnas ||= Urna.all
      urna = @urnas.first
    else
      urna = Urna.find(urna_id)
    end
    dimensoes = urna.dimensaos
    options_for_select(dimensoes.collect{|d| d.dimensoes}, dimensoes.first.dimensoes)
  end

  def dimensoes_revestimentos revestimento_id = nil
    if revestimento_id.nil?
      @revestimentos ||= Urna.all
      revestimento = @revestimentos.first
    else
      revestimento = Urna.find(revestimento_id)
    end
    dimensoes = revestimento.dimensaos
    options_for_select(dimensoes.collect{|d| d.dimensoes}, dimensoes.first.dimensoes)
  end

  def tipos_enfeite
    enfeites ||= Enfeite.all
    options_for_select(enfeites.collect{|r| [r.nome,r.nome, {preco: r.elemento_kit.preco}]}, enfeites.first.nome)
  end

  def tipos_veu
    veus ||= Veu.all
    options_for_select(veus.collect{|r| [r.nome, r.nome, {preco: r.elemento_kit.preco}]}, veus.first.nome)
  end

  def tipos_iluminacao 
    iluminacoes ||= Iluminacao.all
    options_for_select(iluminacoes.collect{|r| [r.nome,r.nome, {preco: r.elemento_kit.preco}]}, iluminacoes.first.nome)
  end

  def carro_carreto_preco urnaId = nil
    elemento ||= ElementoKit.find_by(urna_id: urnaId, produto_type: "CarroCarreto")
    elemento.preco
  end
end