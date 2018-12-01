import ballerina/test;
import ballerina/io;

int[] intList = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
List list = new(intList);

@test:Config
function testSubList() {
    var actual = list.subList(0, 3);
    int[] expected = [10, 20, 30];
    test:assertEquals(actual, expected);
}

@test:Config
function testContains() {
    var actual1 = list.contains(30);
    test:assertTrue(actual1);
    var actual2 = list.contains(15);
    test:assertFalse(actual2);
}
