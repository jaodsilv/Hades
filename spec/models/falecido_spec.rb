require 'rails_helper'

RSpec.describe Falecido, type: :model do
  describe "Validations" do
    context "Geral" do
      before do
        cadastro = FactoryGirl.create :cadastro
        @falecido = FactoryGirl.build :falecido
        cadastro.falecido = @falecido
        cadastro.save
      end

      #nome
      it { expect(@falecido).to validate_length_of(:nome).is_at_most(255).with_message(/pode ter no máximo 255 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:nome)}

      #nome_mae
      it { expect(@falecido).to validate_length_of(:nome_mae).is_at_most(255).with_message(/pode ter no máximo 255 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:nome_mae)}

      #nome_pai
      it { expect(@falecido).to validate_length_of(:nome_pai).is_at_most(255).with_message(/pode ter no máximo 255 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:nome_pai)}

      #naturalidade
      it { expect(@falecido).to validate_length_of(:naturalidade).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:naturalidade)}

      #naturalidade_mae
      it { expect(@falecido).to validate_length_of(:naturalidade_mae).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:naturalidade_mae)}

      #naturalidade_pai
      it { expect(@falecido).to validate_length_of(:naturalidade_pai).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:naturalidade_pai)}

      #documento 
      it { expect(@falecido).to validate_length_of(:documento).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:documento)}

      #profissao
      it { expect(@falecido).to validate_length_of(:profissao).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:profissao)}

      #profissao_mae
      it { expect(@falecido).to validate_length_of(:profissao_mae).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:profissao_mae)}

      #profissao_pai
      it { expect(@falecido).to validate_length_of(:profissao_pai).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }
      it { expect(@falecido).to_not validate_numericality_of(:profissao_pai)}

      #idade_mae
      it { expect(@falecido).to validate_numericality_of(:idade_mae).only_integer.with_message(/só pode conter números inteiros./)}

      #idade_pai
      it { expect(@falecido).to validate_numericality_of(:idade_pai).only_integer.with_message(/só pode conter números inteiros./)}

      #cpf
      it { expect(@falecido).to validate_length_of(:cpf).is_at_most(20).with_message(/pode ter no máximo 20 caracteres./) }

      #numero_documento
      it { expect(@falecido).to validate_length_of(:numero_documento).is_at_most(50).with_message(/pode ter no máximo 50 caracteres./) }

      #beneficio
      it { expect(@falecido).to validate_length_of(:beneficio).is_at_most(20).with_message(/pode ter no máximo 20 caracteres./) }

      #peso
      it { expect(@falecido).to validate_numericality_of(:peso).is_less_than(500).with_message(/não pode ser maior que 500kg./) }

      #altura
      it { expect(@falecido).to validate_numericality_of(:altura).is_less_than(400).with_message(/não pode ser maior que 400cm./) }

    end

    context "GD" do
      before do
        cadastro = FactoryGirl.create :cadastro_gd
        @falecido = FactoryGirl.build :falecido
        cadastro.falecido = @falecido
        cadastro.save
      end
     it {expect(@falecido).to validate_presence_of(:nome).with_message(/não pode ser vazio./)}
    end

    context "PNS" do
      before do
        cadastro = FactoryGirl.create :cadastro
        @falecido = FactoryGirl.build :falecido
        cadastro.falecido = @falecido
        cadastro.save
      end

      it {expect(@falecido).to validate_presence_of(:nome).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:sexo).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:cor).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:naturalidade).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:estado_civil).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:nome_mae).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:nome_pai).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:estado_civil_mae).with_message(/não pode ser vazio./)}

      it {expect(@falecido).to validate_presence_of(:estado_civil_pai).with_message(/não pode ser vazio./)}
    end


  end

end
