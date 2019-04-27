package ejpractico3cliente;

public class ValidacionException extends Exception {
    public ValidacionException(){
        super();
    }

    public ValidacionException(String mensaje){
        super(mensaje);
    }
}
