Provides utility functions for Ballerina.

# Module Overview

The Utility connector allows you to do all the utility operations related to following categories.
1. Arrays

## Compatibility

| Ballerina Language Version  |
|:---------------------------:|
| 0.985.0                     |

## Getting started

> Refer the [Getting Started](https://ballerina.io/learn/getting-started/) guide to download and install Ballerina.

Import the `b7a/util` module into the Ballerina project.
```ballerina
import b7a/util;
```

The `subArray` function returns the sub array of the given array.
```ballerina
    int[] a = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
    int[] actual = subArray(a, 0, 3);
```
