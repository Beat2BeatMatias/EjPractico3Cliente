package ejpractico3cliente

import grails.transaction.Transactional
import groovy.json.JsonSlurper
import org.hibernate.Transaction

@Transactional
class ClientController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def validacionService

    def index() {

    }

    def enviarDatos(){
        def url= new URL("http://localhost:4567/agencias/sites/" + params.site + "/payment_methods/" + params.payment_methods + "/order/" + params.order + "/agencies?near_to=" + params.latitud + "," + params.longitud + ",300")
        def urlDefinitivo = validacionService.validarParametros(url, params.limit, params.offset)

        def connection = (HttpURLConnection) urlDefinitivo.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "application/json")
        connection.setRequestProperty("user-Agent", "Mozilla/5.0")

        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"))
        int read = 0
        StringBuffer buffer = new StringBuffer()
        char[] chars = new char[1024]
        while ((read = reader.read(chars)) != -1) {
            buffer.append(chars, 0, read)
        }
        reader.close()

        JsonSlurper json = new JsonSlurper()
        println(buffer.toString())
        def jsonText = json.parseText(buffer.toString())
        println jsonText.toString()
        session.data=jsonText.data
        [result:jsonText.data]
    }
    def saveAgency(){
        Object jsonAgency=session.data
        jsonAgency.each {it -> if (it.id == params.id){
            println it.address.address_line.toString()
            def address = new Address(it.address.address_line.toString(),it.country.toString(), it.address.country.toString(), it.address.location.toString(), it.address.other_info.toString(), it.address.state.toString(), it.address.zip_code.toString()).save(flush:true, failOnError:true)
            new Agency(address,it.agency_code,it.correspondent_id,it.description, it.disabled,it.distance,it.id,it.payment_method_id,it.phone,it.site_id,it.terminal).save(flush:true, failOnError:true)
        }}
        
    }
}
