package ejpractico3cliente

import grails.gorm.transactions.Transactional

@Transactional
class ValidacionService {

    URL validarParametros(URL url, String limit, String offset) {
        String urlO=url.toString()
        if (limit) {
            url = new URL(urlO+"&limit=" + limit)
            if(offset)
                url = new URL(urlO+"&offset="+offset+"&limit="+limit)
        } else if(offset)
            url = new URL(urlO+"&offset="+offset)
        else
            url = new URL(urlO)

        return url

    }
    def comprobarDuplicacion(String id) {
        def dbAgency = Agency.list()
        boolean estado = dbAgency.any {it -> it.id == id}
        return estado
    }
}
