package steps

import ga.Partida
import ga.PartidaController

class PartidaTestDataAndOperations {

    static partidas = [numero
    : "1", placar: "2x0", situacao: "Em andamento", numCampo: "12",
    numReserva: "6", lastAdminModification: "Augusto Souza", lastUpdateModification: "02/10/2015",

    ]

    static public void createPartida(String num, String plac) {
        def cont = new PartidaController()

        cont.params << [numero: num, placar: plac, situacao: "Em andamento", numCampo: "12", numReserva: "6",
                        lastAdminModification: "Augusto Souza", lastUpdateModification: "02/10/2015"]
        cont.request.setContent(new byte[1000])
        cont.savePartida(cont.createPartida())
        cont.response.reset()
    }

    static public void editPlacar(Partida partida, String plac) {
        def part = partida
        part.setPlacar(plac)
        def cont = new PartidaController()
        cont.params << part.properties
        cont.edit()
        cont.savePartida(cont.createPartida())
        cont.response.reset()

    }

    static public void createModification(Partida partida, String day, String adm) {
        def part = partida
        def cont = new PartidaController()
        cont.params << [partida: partida] << [placar: "2 x 0"] << [situacao: "Completa"] << [numCampo: "12"] << [numReserva: "6"] << [lastAdminModification: adm] << [lastUpdateModification: adm]
        cont.edit()
        cont.savePartida(cont.createPartida())
        cont.response.reset()

    }

    static public def findByPartida(String num, String plac) {
        partidas.find { partida ->
            partida.numero == num
            partida.placar == plac
        }
    }

    static public def findByDate(Partida partida, String date) {
        partidas.find { Partida part ->
            partida.lastUpdateModification == date
        }

    }

    static public def findByAdmin(Partida partida, String admin) {
        partidas.find { Partida part ->
            partida.lastUpdateModification == admin
        }
    }
}