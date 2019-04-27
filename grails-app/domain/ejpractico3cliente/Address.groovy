package ejpractico3cliente

class Address {
    String address_line;
    String city;
    String country;
    String location;
    String other_info;
    String state;
    String zip_code;

    Address(String address_line, String city, String country, String location, String other_info, String state, String zip_code) {
        this.address_line = address_line
        this.city = city
        this.country = country
        this.location = location
        this.other_info = other_info
        this.state = state
        this.zip_code = zip_code
    }
    static constraints = {
        address_line blank:true, nullable: true
        city blank:true, nullable: true
        country blank:true, nullable: true
        location blank:true, nullable: true
        other_info blank:true, nullable: true
        state blank:true, nullable: true
        zip_code blank:true, nullable: true
    }
    static mapping = {
    }
}
