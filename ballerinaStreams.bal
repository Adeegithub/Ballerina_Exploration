//Going to explore stream data type in Ballerina.
import ballerina/io;

//Streams are a data type that represent a continuous flow of data.
//It allows us to process data in real-time as it arrives without consuming data all at once,
//and allowing you to work with large datasets that don't fit in memory.


    type Employee record {
        int id;
        string name;
    };

    
public function main(string filepath = "employees.csv") returns io:Error? {
    stream<int> stream1 = new; //Sequence type is int, termination value is Nil

    stream<int,error?> stream2 = new; //Sequence type is int, termination type is nillable error.

    stream<Employee, io:Error?> fileReadCsvAsStream = check io:fileReadCsvAsStream(filepath,Employee);
    
    //Query Action
    check  from Employee e in fileReadCsvAsStream
    do {
        io:println(e.id);
    };
}
