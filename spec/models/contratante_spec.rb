require 'rails_helper'

RSpec.describe Contratante, type: :model do
  describe "Validations" do
    #before all {Contratante = Contratante.new}
    before do
      cadastro = FactoryGirl.create :cadastro
      @contratante = FactoryGirl.build :contratante
      cadastro.contratante = @contratante
      cadastro.save
    end
    it {expect(@contratante).to validate_presence_of(:nome_completo).with_message(/não pode ser vazio./)}
    it { expect(@contratante).to validate_length_of(:nome_completo).is_at_most(200).with_message(/pode ter no máximo 200 caracteres./) }

    #it {expect(@contratante).to validate_presence_of(:cpf).with_message(/não pode ser vazio./)} #Tá passando teste quando não devia

    it {expect(@contratante).to validate_presence_of(:rg).with_message(/não pode ser vazio./)}

    it { expect(@contratante).to validate_length_of(:profissao).is_at_most(200).with_message(/pode ter no máximo 200 caracteres./) }

   it { expect(@contratante).to validate_length_of(:parentesco).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }

    it {expect(@contratante).to validate_presence_of(:nome_mae).with_message(/não pode ser vazio./)}
    it { expect(@contratante).to validate_length_of(:nome_mae).is_at_most(200).with_message(/pode ter no máximo 200 caracteres./) }

    it { expect(@contratante).to validate_length_of(:email).is_at_most(200).with_message(/pode ter no máximo 200 caracteres./) }
    it {expect(@contratante).to_not allow_value("teste@teste").for(:email)}
    it {expect(@contratante).to allow_value("teste@teste.com").for(:email)}
    

    #it { expect(@contratante).to allow_blank(:email) } #Tá dando erro no allow_blank
  end
end
