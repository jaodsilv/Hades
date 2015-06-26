# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)
nomes_kits = ["ACACIA (O)", "ACACIA LUXO (Y)", "AÇUCENA CONV", "AÇUCENA EG",
  "ANGELICA MENOR (ALPHA)", "ANGELICA (ALPHA) CONV", "ANGELICA (ALPHA) EG", "ANGELICA MENOR",
  "ANGELICA1 CONV", "ANGELICA1 EG", "AZALEIA (H) CONV", "AZALEIA (H) EG", "BEGONIA (OMEGA) CONV",
  "BEGONIA (OMEGA) EG", "BROMELIA (L) CONV", "BROMELIA (L) EG", "CAMELIA (D) CONV",
  "CAMELIA (D) EG", "CONJ. VIAG. INTERNACIONAL INFANTIL", "CONJ. VIAG. NACIONAL INFANTIL",
  "CORPO VINDO DE FORA", "CREMAÇÃO", "DALIA (BETA) CONV", "DALIA (BETA) EG", "DOADOR (L) CONV",
  "DOADOR (L) EG", "GARDENIA (J) CONV", "GARDENIA (J) EG", "GIRASSOL (H) CONV",
  "GIRASSOL (H) EG", "HORTENCIA (I)  CONV", "HORTENCIA (I)  EG", "INTERNACIONAL OURO",
  "INTERNACIONAL PRATA", "JASMIN1 (U) CONV", "JASMIN1 (U) EG", "JASMIN3 (Q) INFANTIL",
  "LAVANDA (E) CONV", "LAVANDA (E) EG", "LIRIO (F) CONV", "LIRIO (F) EG", "MENBROS", "NACIONAL OURO",
  "NACIONAL PRATA", "ORQUIDEA (V) CONV", "ORQUIDEA (V) EG", "PETUNIA CONV", "PETUNIA EG",
  "TULIPA (C) CONV", "TULIPA (C) EG",
]

precos_kits = [328.92, 489.85, 590.68, 708.81, 306.44, 705.11, 846.14, 306.44, 755.62, 930.75,
  2923.22, 3507.88, 967.56, 1161.07, 733.20, 879.85, 3275.44, 3930.53, 5084.46, 1123.79,
  0.00, 0.00, 7976.17, 7571.41, 733.20, 0.00, 1608.93, 1930.73, 1018.27, 1221.92, 2222.91,
  2667.49, 7911.76, 5084.46, 339.68, 407.62, 120.60, 1644.57, 1973.49, 6317.89, 7581.47, 120.60,
  3522.13, 1348.55, 9469.99, 11363.99, 550.93, 661.12, 4577.40, 5492.87,
]

nomes_kits.each {|nome| Urna.create(nome: nome, dimensaos: [])}

dimensoes_por_kit = [
[".O-2  1,60X0,48X0,30", ".O-3  1,20X0,41X0,24",".O-4  0,80X0,31X0,21", ".O-5 0,60X0,26X0,21"],
[".Y-1  1,60X0,48X0,30", ".Y-2  1,20X0,41X0,24", ".Y-3  0,80X0,31X0,21", ".Y-4  0,60X0,26X0,21"],
["M-1 2,00X0,60X0,40","M-2 2,10X0,60X0,40","M-3 2,20X0,60X0,40","M-4 1,90X0,60X0,40",],
["M-3 2,10X0,70X0,50", "M-5 2,20X0,90X0,50", "M-7 2,00X0,70X0,50", ],
["N-4 1,60X0,48X0,30","N-5 1,20X0,41X0,24", "N-6  0,80X0,31X0,21", ],
[".ALFA-3 2,00X0,60X0,40"],
[".ALFA-1 2,20X0,90X0,50", ".ALFA-2 2,10X0,70X0,50", ],
[".ALFA-4 1,20x0,41x0,24", ".ALFA-5 1,60X0,48X0,30", ],
["N-3 2,00X0,60X0,40", "N-7 1,90X0,60X0,40", ],
["N-1 2,20X0,90X0,50", "N-2 2,10X0,70X0,50", ],
[".H-1  2,00X0,60X0,40", ".H-3  1,90X0,60X0,40", ],
[".H-2  2,10X0,70X0,50", ".H-5 2,00X0,70X0,50", ],
[".OMEGA-1 1,90x0,60x0,40", ".OMEGA-2 2,00x0,60x0,40", ".OMEGA-4 2,10x0,60x0,40", ],
[".MEGA-3 2,00x0,70x0,50",],
[".L-1  2,00X0,60X0,40", ".L-4  1,90X0,60X0,40", ".L-5  2,10X0,60X0,40", ],
[".L-2  2,10X0,70X0,50", ".L-6 2,00X0,70X0,50", ".L-7 2,10X0,90X0,50", ".L-8 2,20X0,90X0,50"
  , ".L-9 2,20X1,00X0,90", ],
[".D-1  2,00X0,60X0,40", ".D-6 1,90X0,60X0,40", ],
[".D-3  2,10X0,70X0,50", ".D-4  2,00X0,70X0,50",],
[".CJ.INT. INFANTIL (IC4) 0,80X0,31X0,21", ".CJ.INT. INFANTIL (IC3) 1,60X0,48X0,30",
 ".CJ.INT. INFANTIL (IC10) 1,20X0,41X0,24", ],
[".CJ. NAC. INFANTIL (NC2) 1,20X0,41X0,24", ".CJ. NAC. INFANTIL (NC3)1,60X0,48X0,30", ],
[],
[],
[".BETA-1  2,00X0,60X0,40", ".BETA-3  2,10X0,60X0,40", ],
[".BETA-2  2,00X0,70X0,50", ".BETA-4  2,10X0,70X0,50", ],
[".L-1  2,00X0,60X0,40", ".L-4  1,90X0,60X0,40", ".L-5  2,10X0,60X0,40", ],
[],
[".J-1. 2,00X0,60X0,40", ".J-4  1,90X0,60X0,40", ],
[".K-1 2,00X0,60X0,40", ".K-2  2,10X0,60X0,40", ".K-5  1,90X0,60X0,40", ],
[".K-3  2,10X0,70X0,50", ".K-7  2,00X0,70X0,50", ".K-8 2,10X0,90X0,50",
  ".K-9 2,20X0,70X0,50", ".K-10 2,20X1,00X0,90", ],
[".I-1  2,00X0,60X0,40", ".I-3  1,90X0,60X0,40", ],
[".I-2  2,10X0,70X0,50", ".I-5   2,00x0,70x0,50", ],
[".CJ.INT. OURO (IA1) 2,20X0,70X0,50", ".CJ.INT. OURO (IA2) 2,00X0,60X0,40",
  ".CJ.INT. OURO (IA3) 2,10X0,70X0,50", ],
[".CJ.INT. PRATA (IB5) 2,00X0,60X0,40", ".CJ.INT. PRATA (IB2) 2,20X0,70X0,50",
  "CJ.INT. PRATA (IB1) 2,20X0,90X0,50", ],
[".U-1 2,00X0,60X0,40", ".U-2 2,10X0,60X0,40", ".U-8 1,90X0,60X0,40", ],
[".U-3 2,10X0,70X0,50", ".U-4 2,10X0,90X0,50", ".U-5 2,20X0,70X0,50",
  ".U-6  2,20X1,00X0,90", ".U-7 2,00X0,70X0,50", ],
[".Q-2 1,60X0,52X0,28", ".Q-3 1,20X0,42X0,23", ".Q-4 0,80X0,31X0,21", ".Q-5 0,60X0,26X0,20", ],
[".E-1 2,00X0,60X0,40", ".E-3 1,90X0,60X0,40", ".E-4 2,10X0,60X0,40", ],
[".E-2 2,10X0,70X0,50", ],
[".F-1 2,10X0,60X0,40", ".F-4  1,90X0,60X0,40", ],
[".F-3  2,10X0,70X0,50", ".F-5 2,00X0,70X0,50", ],
[".Q-2 1,60X0,52X0,28", ".Q-3 1,20X0,42X0,23", ".Q-4 0,80X0,31X0,21", ".Q-5 0,60X0,26X0,20", ],
[".CJ. NAC. OURO (NA1) 2,00X0,60X0,40", ".CJ. NAC. OURO (NA2) 2,10X0,70X0,50",
  ".CJ. NAC. OURO (NA3) 2,20X0,70X0,50", ".CJ. NAC. OURO (NA4) 2,10X0,60X0,40", ],
[".CJ. NAC. PRATA (NB4) 2,00X0,60X0,40", ".CJ. NAC. PRATA (NB5) 2,10X0,70X0,50", ],
[".V-1  2,00X0,60X0,40", ".V-4  1,90X0,60X0,40", ],
[".V-3  2,10X0,70X0,50", ".V-5 2,00X0,70X0,50", ],
["Z-1  2,00X0,60X0,40", "Z-2  2,10X0,60X0,40", "Z-4  2,20X0,60X0,40", "Z-5  1,90X0,60X0,40", ],
["Z-3 2,10X0,70X0,50", "Z-6 2,00X0,70X0,50", ],
[".C-1  2,00X0,60X0,40", ],
[".C-3  2,10X0,70X0,50", ".C-4  2,00X0,70X0,50", ]]


Urna.all.each {|urna| urna.dimensaos = dimensoes_por_kit[urna.id].map({|dimensao| Dimensao.build(dimensoes: dimensao, unidade_de_medida: 'm')})}


Urna.all.each {|urna| ElementoKit.create(urna: urna, produto: urna, preco: precos_kits[:urna.id])}
urna.save

  revestimento = revestimentos.first
  revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
  revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
  revestimento.save
  revestimento = revestimentos.last
  revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
  revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
  revestimento.save

  enfeites = Enfeite.create([{nome: "Véu", unidade_de_medida: "pacote"},{nome: "Flores", unidade_de_medida: "Pacote"}])
  veus = Veu.create([{nome: "Rendado", unidade_de_medida: "Unidade"}, {nome: "Liso", unidade_de_medida: "Unidade"}])
  iluminacaos = Iluminacao.create([{nome: "Velas", unidade_de_medida: "Pacote"}, {nome: "Fluorescente", unidade_de_medida: "Lâmpada"}])
  tipo_sepultamento = TipoSepultamento.create({nome: "Qd. Geral Terra s/ Gaveta"})
  carro_carreto = CarroCarreto.create({enabled: true})
  carro_remocao = CarroRemocao.create({enabled: true})
  carro_enterro = CarroEnterro.create({enabled: true})
  taxa_sepultamento = TaxaSepultamento.create({enabled: true})  # taxa sepultamento carreto não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
  essa_paramento = EssaParamento.create({enabled: true})
  taxa_velorio = TaxaVelorio.create({enabled: true})
  mesa_condolencia = MesaCondolencia.create({enabled: true})

def add_produto urna, produto, preco
   elemento_kit = ElementoKit.new({preco: preco})
   elemento_kit.urna = urna
   elemento_kit.produto = produto
end