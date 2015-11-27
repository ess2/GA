package ga



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PartidaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Partida.list(params), model:[partidaInstanceCount: Partida.count()]
    }
    public Partida createPartida() {
        return new Partida(params)
    }

    def show(Partida partidaInstance) {
        respond partidaInstance
    }

    def create() {
        respond new Partida(params)
    }

    public boolean savePartida(Partida partida) {
        partida.save flush : true
        true
    }

    @Transactional
    def save(Partida partidaInstance) {
        if (partidaInstance == null) {
            notFound()
            return
        }

        if (partidaInstance.hasErrors()) {
            respond partidaInstance.errors, view:'create'
            return
        }

        partidaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'partida.label', default: 'Partida'), partidaInstance.id])
                redirect partidaInstance
            }
            '*' { respond partidaInstance, [status: CREATED] }
        }
    }

    def edit(Partida partidaInstance) {
        respond partidaInstance
    }

    @Transactional
    def update(Partida partidaInstance) {
        if (partidaInstance == null) {
            notFound()
            return
        }

        if (partidaInstance.hasErrors()) {
            respond partidaInstance.errors, view:'edit'
            return
        }

        partidaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Partida.label', default: 'Partida'), partidaInstance.id])
                redirect partidaInstance
            }
            '*'{ respond partidaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Partida partidaInstance) {

        if (partidaInstance == null) {
            notFound()
            return
        }

        partidaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Partida.label', default: 'Partida'), partidaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'partida.label', default: 'Partida'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
