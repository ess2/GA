Feature: Partida

  As a membro administrador do Grupo de Atletas
  I want to adicionar e modificar partidas do Sistema de Gerenciamento de Atletas
  So that eu posso adicionar novas partidas e modificar seus jogadores, situacoes e placares

  Scenario: Registrar Modificacao de Placar

    Given que eu tenha a partida "1" salva no sistema e placar "1 x 0"
    And estou modificando as informacoes da partida como "Augusto Souza" na data "10/10/2015"
    When eu modifico o placar da partida de numero "1" de "1 x 0" para "2 x 0"
    Then eu salvo a data "10/10/2015" e o nome "Augusto Souza" que fez as modificacoes no sistema

  @ignore
  Scenario: Modificar partida sem informacao do usuario que modificou

    Given que o sistema possui a partida "28" salva no sistema
    When eu nao preencho o campo de quem esta fazendo as modificacoes
    And confirmo minhas mudancas
    Then o sistema nao armazena as mudancas

  @ignore
  Scenario: Modificar uma partida Em Andamento para Completa GUI

    Given que eu estou na pagina de partidas
    And eu seleciono a opcao "modificar" para partida de numero "4"
    When eu seleciono a situacao da partida "4" de "Em andamento" para "Completa"
    And eu seleciono "salvar"
    Then uma mensagem de sucesso e exibida na tela

  Scenario: Numero de Jogadores Titulares obrigatorios para partida

    Given que eu estou na pagina de modificar partidas
    When eu preencho o numero de jogadores titulares da partida com ""
    And preencho o restante dos campos requeridos corretamente
    And envio minhas modificacoes
    Then uma mensagem de erro e visualizada no topo da pagina
  @ignore
  Scenario: Registrar Modificacao de Numero de Jogadores

    Given que eu tenha a partida "10" salva no sistema
    And eu estou logado como administrador "Joao" na data "25/09/2015"
    When eu altero o numero de jogadores da partida "10" de "11" para "15"
    Then eu salvo a data "25/09/2015" e o nome do administrador "Joao" que fez as modificacoes no sistema
