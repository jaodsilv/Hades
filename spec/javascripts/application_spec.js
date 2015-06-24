//= require application

describe("cpf", function() {
  it("testando mascara de cpf", function() {
    cpf_mask('41884916805').should.equal('418.849.168-05');
  });

});

describe("telefone", function() {
  it("testando mascara telefone", function() {
    telefone_mask('11912345678').should.equal('(11) 91234-5678');
  });

});

describe("hora", function() {
  it("testando mascara hora", function() {
    hora_mask('1232').should.equal('12:32');
  });

  it("testando mascara hora com 1 digito", function() {
    hora_mask('123').should.equal('1:23');
  });

});

describe("cep", function() {
  it("testando mascara cep", function() {
    cep_mask('12345678').should.equal('12345-678');
  });

});

describe("cnpj", function() {
  it("testando mascara cnpj", function() {
    cnpj_mask('123456789123456').should.equal('123.456.789/1234-56');
  });

});

describe("função disableIfEqual", function() {
  it("testando função disableIfEqual", function() {
    $('body').append("<input id='campoA' value='xpto'> <br/> <input id='campoB'>");
    disableIfEqual("campoB", "campoA", "xpto");

    assert.ok($('#campoB').prop( "disabled") == true);
  });

});

describe("função buscaCEP", function() {
  it("testando função buscaCEP", function() {
    $('body').append("<input id='endereco'> <br/> <input id='bairro'> <br/> <input id='cidade'> <br/> <input id='estado'>");
    
    var jsonCorreios = "{'bairro': 'Butantã', 'logradouro': 'Rua do Matão', 'cep': '05508090', 'uf': 'SP', 'localidade': 'São Paulo'}";
    preencheCamposEndereco(jsonCorreios);

    assert.ok($('#endereco').val() == 'Rua do Matão');
  });
});