class NotaFiscalController < ApplicationController
  def new
  	@cadastro_id = params[:cadastro_id]

  	@cadastro = Cadastro.find(@cadastro_id);
    
  	@css = {
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "visited col-sm-2",
  		barra_falecido: "visited col-sm-2",
  		barra_obito: "visited col-sm-2",
  		barra_produtos: "previous visited col-sm-2",
  		barra_notas: "active col-sm-2 ultimo_ativo",
  	}
  end

  def create
  	@cadastro_id = params[:cadastro_id]

    @cadastro = Cadastro.find(@cadastro_id);

    @cabecalho = cabecalho_nota_contratacao

    @dados_falecido_nota = dados_falecido_nota_contratacao

    @dados_pais_falecido = dados_pais_falecido
    
  	kit = PDFKit.new @cabecalho + @dados_falecido_nota + @dados_pais_falecido

  	kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/nota_contratacao.css"

	  pdf = kit.to_file "#{Rails.root}/tmp/notas/nota_contratacao_#{@cadastro_id}.pdf"

    @css = {
      barra_filtro: "visited first col-sm-2",
      barra_contratante: "visited col-sm-2",
      barra_falecido: "visited col-sm-2",
      barra_obito: "visited col-sm-2",
      barra_produtos: "previous visited col-sm-2",
      barra_notas: "active col-sm-2 ultimo_ativo",
    }
    

  end

  private
    def cabecalho_nota_contratacao
      "<div id='cabecalho'>
        <div id='logo' style='heigth:25%'>
          <img class='logo' src='#{Rails.root}/app/assets/images/logo_prefeitura_servicos.jpg'>
        </div>
        <div style='margin-top:-20px;'>
          <div id='titulo' style='float:right;margin-top:-100px'>
            <h3><b>Serviço Funerário do Município de São Paulo</b></h3>
          </div>
          <div id='subtitulo' style='float:right;margin-top:-60px;margin-right:25px;'>
            Rua da Consolação, 247 5º e 6º Andar - Centro <br/>
          </div>
          <div id='subtitulo2' style='float:right;margin-top:-40px;margin-right:120px;'>
            CNPJ: 47.261.202/0001-60
          </div>
          <div id='horario' style='float:right;'>
          <b>#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}</b>
          </div>
        </div>
        <div style='margin-top:30px;text-align: center;'>
          <b>NOTA DE CONTRATAÇÃO DE FUNERAL</b>
        </div>
        <div style='text-align: center;border-bottom:1px solid black; height: 40px;'>
          DISK 24 HORAS 0800-109850
        </div>
      </div>";
    end

    def age(dob)
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

    def dados_falecido_nota_contratacao
      idade = age(@cadastro.falecido.nascimento)
      "<div id='' style='margin-top:30px'>
        <div style='width:100%'>
            <div style='width:50%'>
                Falecido(a) : #{@cadastro.falecido.nome}
            </div>
             <div style='width:50%;margin-top: -20px;margin-left: 450px;'>
                <b>Nro declaração de Óbito: #{@cadastro.id}</b>
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style='width:33%'>
                CPF : #{@cadastro.falecido.cpf}
            </div>
             <div style='width:33%;margin-top: -20px;margin-left: 250px;'>
                Tipo Documento : #{@cadastro.falecido.documento}
            </div>
            <div style='width:33%;margin-top: -20px;margin-left: 500px;'>
                Documento : #{@cadastro.falecido.numero_documento}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style='width:25%'>
                Sexo : #{@cadastro.falecido.sexo}
            </div>
             <div style='width:25%;margin-top: -18px;margin-left: 150px;'>
                Cor : #{@cadastro.falecido.cor}
            </div>
            <div style='margin-top: -18px;margin-left: 250px;'>
                Data Nasc. : #{@cadastro.falecido.nascimento.strftime("%d/%m/%Y")}
            </div>
            <div style='width:25%;margin-top: -18px;margin-left: 550px;'>
                Idade : #{idade}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style='width:25%'>
                Cartorio: #{@cadastro.falecido.certidao_nascimento.cartorio}
            </div>
             <div style='width:25%;margin-top: -18px;margin-left: 200px;'>
                Livro : #{@cadastro.falecido.certidao_nascimento.livro}
            </div>
            <div style='margin-top: -18px;margin-left: 400px;'>
                Folha. : #{@cadastro.falecido.certidao_nascimento.folha}
            </div>
            <div style='width:25%;margin-top: -18px;margin-left: 550px;'>
                Numero : #{@cadastro.falecido.certidao_nascimento.numero}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style='width:25%'>
                Natural de: #{@cadastro.falecido.naturalidade}
            </div>
            <div style='width:25%;margin-top: -18px;margin-left: 550px;'>
                Estado Civil: #{@cadastro.falecido.estado_civil}
            </div>
        </div>
         <div style='height:40px;width:100%;margin-top:10px;border-bottom:1px solid black;'>
            <div >
                Endereço: #{@cadastro.falecido.localizacao.endereco}, #{@cadastro.falecido.localizacao.numero}
            </div>
        </div>

      </div>";
    end

    def dados_pais_falecido
      "<div id='' style='margin-top:30px'>
        <div style='width:100%'>
            <div style=''>
                Nome do Pai : #{@cadastro.falecido.nome_pai}
            </div>
             <div style='margin-top: -20px;margin-left: 450px;'>
                Estado Civil: #{@cadastro.falecido.estado_civil_pai}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style=''>
                Natural de: #{@cadastro.falecido.naturalidade_pai}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style=''>
                Nome da Mãe : #{@cadastro.falecido.nome_mae}
            </div>
             <div style='margin-top: -20px;margin-left: 450px;'>
                Estado Civil: #{@cadastro.falecido.estado_civil_mae}
            </div>
        </div>
        <div style='width:100%;margin-top:10px'>
            <div style=''>
                Natural de: #{@cadastro.falecido.naturalidade_mae}
            </div>
        </div>                
      </div>";
    end
end
