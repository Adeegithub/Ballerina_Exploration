import ballerina/io;
public function main() {
    //Exploring Tupples Structure
    //What's the Difference between Array and a Tuple.

    //Array
    int[] sampleArray = [1,2,4,5];
    //In Arrays you can specify only one Data Type.

    //Tuples
    [int,string,boolean] sampleTuple = [1,"Adeesha",true];

    [string,string,int] myDetails = ["Adeesha", "Galle", 27];

    //Index Based Access of Tuples

    //Accessing My Age based on the index
    int age = myDetails[2];
    io:println("My age is: " , age);
    string myname = myDetails[0];
    io:println("My Name is: ", myname);

    //Rest Types in Tuples
    [string,string,int] myDetails2 = ["Adeesha", "Galle", 27];

    //Now I want to add data to the tuple dynamically.
    //That's where rest types come in.
    [string,string,int,string...] myDetails3 = ["Adeesha", "Galle", 27, "Cricket", "Coding"];
    io:println(myDetails3);

    string[] friendsOfAdeesha = ["Poornaka","Raveen"];

    //Iterate through the friends array and add each friend to the myDetails3 Tuple.
    foreach string friend in friendsOfAdeesha {
        myDetails3.push(friend);
    }

    //Printing out
    io:println(myDetails3);

}

function getCricketerPerformance() returns [int,int, float]{
    //Total Runs and No.of Innings and Average
    return [10387, 200, 51.93];
}