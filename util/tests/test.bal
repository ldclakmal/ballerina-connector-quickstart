import ballerina/test;
import ballerina/io;

int[] intList = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
List list = new(intList);

int newValue = 110;

@test:Config
function testSubList() {
    var actual = list.subList(0, 3);
    int[] expected = [10, 20, 30];
    test:assertEquals(actual, expected);
}

@test:Config
function testContains() {
    boolean actual1 = list.contains(30);
    test:assertTrue(actual1);
    boolean actual2 = list.contains(15);
    test:assertFalse(actual2);
}

@test:Config
function testAdd() {
    var actual = list.add(newValue);
    int[] expected = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, newValue];
    test:assertEquals(actual, expected);
}

@test:Config {
    dependsOn: ["testAdd"]
}
function testRemove() {
    var actual = list.remove(newValue);
    int[] expected = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
    test:assertEquals(actual, expected);
}
