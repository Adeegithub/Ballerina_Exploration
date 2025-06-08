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

    io:println("");
    io:println("***************");
    io:println("");


    //Index Based Iteration
    foreach int i in 0..<countries.length() {
        io:println(countries[i]);
    }

    io:println("");
    io:println("***************");
    io:println("");

    //In-built iteration method
    countries.forEach(country => io:println(country));

    io:println("");
    io:println("***************");
    io:println("");

    //Copy and Merge Arrays in Ballerina
    string[] slCricketers = ["Adeesha", "Mahela", "Kumar"];
    string[] nzCricketers = ["Guptil", "Kane", "Mcculum"];

    //destructuring firstNames array
    string[] allCricketers = [...slCricketers, ...nzCricketers];
    allCricketers.forEach(player => io:println(player));

    io:println("");
    io:println("***************");
    io:println("***************");
    io:println("");

    //2D Arrays in Ballerina
    //I'm going to initialize 2x3 (2rows, 3 coulums) Array
    string[2][3] players = [
        ["Adeesha","Mahela","Kumar"],
        ["Thisara", "Mathews", "Rangana"]
    ];

    io:println(players);

    io:println("");
    io:println("***************");
    io:println("***************");
    io:println("");

    //Accessing 2D arrays via Index
    //Lets take the value (player name) of the 1st row second column player.
    //1st Row -> 0th Index
    //2nd Column -> 1sr Index

    string playerName = players[0][1];
    io:println("The player you're looking for is: " + playerName);

    io:println("");
    io:println("***************");
    io:println("***************");
    io:println("");

    //lanley Functions(Array Functions)
    string[] aussies = [];
    aussies.push("Mathew Hayden", "Brett Lee", "Ricky Ponting","Mike Hussey","Michale Clerk");
    aussies.forEach(mate => io:println(mate));

    //Filtering the Names starts with "M"
    io:println("");
    io:println("***************");
    io:println("***************");
    io:println("");
    //Using filer and startsWith functions
    io:println(aussies.filter(name => name.startsWith("M")));

}