package steps

import static cucumber.api.groovy.EN.*
import ga.Partida

this.metaClass.mixin(cucumber.api.groovy.Hooks)
this.metaClass.mixin(cucumber.api.groovy.EN)

Given(~'^que eu tenha a partida "([^"]*)" salva no sistema e placar "([^"]*)"$') { String numero, String placar ->
    PartidaTestDataAndOperations.createPartida(numero,placar)
    partida = Partida.findByNumero(numero)
    assert partida != null

}

Given(~'^estou modificando as informacoes da partida como "([^"]*)" na data "([^"]*)"$') { String admin, date ->
    pessoa = admin
    data = date
}

When(~'^eu modifico o placar da partida de numero "([^"]*)" de "([^"]*)" para "([^"]*)"$') { String numero, placarCurrent, placarNew ->
    PartidaTestDataAndOperations.editPlacar(partida,placarNew)

}
Then(~'^eu salvo a data "([^"]*)" e o nome "([^"]*)" que fez as modificacoes no sistema$') { String date, admin ->
    PartidaTestDataAndOperations.createModification(partida, pessoa, data)
    assert Partida.findByLastUpdateModification(date) != null
    assert Partida.findByLastAdminModification(admin) != null

}

