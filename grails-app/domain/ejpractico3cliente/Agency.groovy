package ejpractico3cliente

class Agency {

    Address address;
    String agency_code;
    String correspondent_id;
    String description;
    String disabled;
    String distance;
    String id;
    String payment_method_id;
    String phone;
    String site_id;
    String terminal;

    Agency(Address address, String agency_code, String correspondent_id, String description, String disabled, String distance, String id, String payment_method_id, String phone, String site_id, String terminal) {
        this.address = address
        this.agency_code = agency_code
        this.correspondent_id = correspondent_id
        this.description = description
        this.disabled = disabled
        this.distance = distance
        this.id = id
        this.payment_method_id = payment_method_id
        this.phone = phone
        this.site_id = site_id
        this.terminal = terminal
    }
    static constraints = {

        address blank:true, nullable: true
        agency_code blank:true, nullable: true
        correspondent_id blank:true, nullable: true
        description blank:true, nullable: true
        disabled blank:true, nullable: true
        distance blank:true, nullable: true
        id blank:true, nullable: true
        payment_method_id blank:true, nullable: true
        phone blank:true, nullable: true
        site_id blank:true, nullable: true
        terminal blank:true, nullable: true


    }
    static mapping = {
        id generator:'assigned'
    }
}
