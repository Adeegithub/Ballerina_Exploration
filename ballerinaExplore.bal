import ballerina/io;
public function main(){
    io:println("Hello Adeesha");

    //Testing Arrays.
    string[] cricketers = ["Adeesha", "Mahela", "Kumar"];
    io:println(cricketers);
    io:println("***************");
    
    //Fixed length Type
    string[2] couples = ["Bathiya", "Santhush"];
    io:println(couples);

    //Inferred Arrays
    string[*] countries = ["Sri Lanka", "Australia", "New Zealand"];
    //Now I want to add another country for countries array.
    // countries.push("Switzerland");
    //This will throw an error saying,
    // cannot call 'push' on fixed length list(s) of type 'string[3]'(BCE3922)
    // It's beacuse it has inferred the length from the elements of the right side of the countries array;


    //Array Iteration
    foreach string country in countries {
        io:println(country);
    }

    io:println("***************");


    //Index Based Iteration
    foreach int i in 0..<countries.length() {
        io:println(countries[i]);
    }

    io:println("***************");

    //In-built iteration method
    countries.forEach(country => io:println(country));

}