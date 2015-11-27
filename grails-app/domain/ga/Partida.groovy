package ga

class Partida {

    String numero
    String placar
    String situacao
    String numCampo //string referente ao numero de jogadores em campo
    String numReserva //string referente ao numero de jogadores reservas
    String lastAdminModification //ultima pessoa que fez modificação na partida
    String lastUpdateModification //ultima data que a partida foi modificada

    static constraints = {
        numero null : false
        placar null : false
        situacao null : false
        numCampo null : false
        numReserva null : false
        lastAdminModification null : false
        lastUpdateModification null : false

    }

    void setAdminModification(String adm){
        this.lastAdminModification = adm
    }
    void setDateModification(String date) {
        this.lastUpdateModification = date

    }
}