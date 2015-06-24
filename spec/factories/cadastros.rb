FactoryGirl.define do
  factory :cadastro do
    contratante nil
    falecido nil
    tipo_operacao 1
    tipo_contratacao 1
    destino_final 1
    dados_obito nil
  end

  factory :cadastro_gd, class: Cadastro do
    contratante nil
    falecido nil
    tipo_operacao 2
    tipo_contratacao 3
    destino_final 1
    dados_obito nil
  end
end
