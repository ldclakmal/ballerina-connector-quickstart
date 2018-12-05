# Ballerina Utility Connector

The Utility connector allows you to do all the utility operations related to following categories.
1. List

## Compatibility

| Ballerina Language Version  |
|:---------------------------:|
| 0.990.0                     |

## Getting started

> Refer the [Getting Started](https://ballerina.io/learn/getting-started/) guide to download and install Ballerina.

Import the `b7a/util` module into the Ballerina project.
```ballerina
import b7a/util;
```

Initialize the list with the initial set of values. For the sample we will use an integer array.
```ballerina
    int[] intList = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
    List list = new(intList);
```

The `subList` function returns the sub list of the given list.
```ballerina
    var response = list.subList(0, 3);
```

The `contains` function returns whether the given item exists in the list.
```ballerina
    boolean response = list.contains(30);
```

The `add` function adds the given item and returns the updated list.
```ballerina
    var response = list.add(110);
```

The `remove` function removes the given item and returns the updated list.
```ballerina
    var response = list.remove(110);
```
