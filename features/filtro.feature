Feature: Filtro
  In Order to go to the right registration screen
  As a regular user
  I want to have the right parameters sent

  Scenario: Login
    Given I am at the starting page
    And exists user with email "admin@admin.com" and password "adminadmin"
    And I am not signed in
    When I fill in "user_email" with "admin@admin.com"
    And I fill in "user_password" with "adminadmin"
    And I click "Log in"
    Then I should be signed in

  Scenario: Before choosing Tipo de Operacao
    Given I am at the starting page
    And I am signed in
    Then I should see "Tipo de Operação"
    And I should see "1. Pago"
    And I should see "2. Gratuito"
    And I should see "3. Registro de Óbito"
    And I should see "Hades"
    And I should see "Sistema Funerário de São Paulo"

  @javascript
  Scenario: Before choosing Tipo de Contratacao Pago
    Given I am at the starting page
    And I am not signed in
    And I am signed in
    When I click the option "1. Pago" for "Tipo de Operação"
    Then I should see "Tipo de Contratação"
    And I should see "1. Contratação normal"
    And I should see "2. Corpo vindo de fora"
    And I should see "3. Membro"
    And I should see "4. Semi intacto"

  @javascript
  Scenario: Before choosing Tipo de Contratacao Gratuito
    Given I am at the starting page
    And I am signed in
    When I click the option "2. Gratuito" for "Tipo de Operação"
    Then I should see "Tipo de Contratação"
    And I should see "1. Social"
    And I should see "2. Membro"
    And I should see "3. Desconhecido"

  @javascript
  Scenario: Before choosing Destino Final
    Given I am at the starting page
    And I am signed in
    When I click the option "1. Pago" for "Tipo de Operação"
    And I click the option "2" for "Tipo de Contratação"
    Then I should see "Destino Final"
    And I should see "1. Sepultamento"
    And I should see "2. Cremação"
