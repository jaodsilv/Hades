class Falecido < ActiveRecord::Base
  has_one :localizacao
  has_one :certidao_nascimento
  belongs_to :cadastro
  has_one :localizacao
  has_one :nascimento_obito
  has_one :certidao_nascimento
  has_many :filhos
  has_many :casamentos
  has_one :nascimento_obito

  accepts_nested_attributes_for :localizacao
  accepts_nested_attributes_for :casamentos
  accepts_nested_attributes_for :nascimento_obito
  accepts_nested_attributes_for :filhos
  accepts_nested_attributes_for :nascimento_obito
  accepts_nested_attributes_for :certidao_nascimento

  validates_associated :casamentos, :filhos, :nascimento_obito, :localizacao, if: :PNS?

  #Geral
  #validates :nascimento_obito, presence: true
  validates :nome, :nome_mae, :nome_pai, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, numericality: false
  validates :naturalidade, :naturalidade_mae, :naturalidade_pai, :documento, :profissao, :profissao_mae, :profissao_pai, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, numericality: false
  validates :idade_mae, :idade_pai, numericality: {only_integer: true, message: "só pode conter números inteiros."}, allow_blank: true
  validates :cpf, length: {maximum: 20, message: "pode ter no máximo 20 caracteres."}
  #Não fizemos validação das datas de nascimento
  validates :numero_documento, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}
  validates :beneficio, length: {maximum: 20, message: "pode ter no máximo 20 caracteres."}
  #validates :peso, :altura, length: {maximum: 5, message: "pode ter no máximo 5 caracteres."}
  validates :peso, numericality: {less_than: 500, message: "não pode ser maior que 500kg."}, allow_blank: true
  validates :altura, numericality: {less_than: 400, message: "não pode ser maior que 400cm."}, allow_blank: true

  #GD
  validates :nome, presence: { message: "não pode ser vazio."}, if: :GD?

  #PNS
  validates :nome, :sexo, :cor, :naturalidade, :estado_civil, presence: { message: "não pode ser vazio."}, if: :PNS?
  validates :nome_mae, :nome_pai, :estado_civil_mae, :estado_civil_pai, presence: { message: "não pode ser vazio."}, if: :PNS?

  def GD?
    cadastro.GD?
  end

  def PNS?
    cadastro.PNS?
  end

  def valida_filho?
    @valida_filho ||= false
    @valida_filho
  end

  def valida_filho= param
    @valida_filho = param
  end

  def valida_casamento?
    @valida_casamento ||= false
    @valida_casamento
  end

  def valida_casamento= param
    @valida_casamento = param
  end
end

#TODO se declarante não trouxer documento, colocar termo de responsabilidade na nota
