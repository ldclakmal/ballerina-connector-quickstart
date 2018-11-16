import ballerina/test;
import ballerina/io;

int[] a = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

@test:Config
function testSubArray() {
    var actual = subArray(a, 0, 3);
    match actual {
        int[] => {io:println("afda");}
        any[] => {}
    }
    int[] expected = [10, 20, 30];
    test:assertEquals(actual, expected);
}