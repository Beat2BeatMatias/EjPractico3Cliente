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
    def comprobarDuplicacion(Object listaJson) {
        def dbAgency = Agency.list()
        boolean estado = listaJson.any { it -> dbAgency.any{ dbS -> dbS.id == it.id }}
        return estado
    }
}
