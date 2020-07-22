# Ballerina Connector Quickstart

This is a sample Ballerina connector for demonstration purpose.

## Compatibility

| Ballerina Language Version |
|:--------------------------:|
| 1.2.x, Swan Lake Preview x |

## Getting started

> Refer the [Getting Started](https://ballerina.io/learn/getting-started/) guide to download and install Ballerina.

Move inside to `ballerina-connector-quickstart` directory and execute `$ ballerina build sample` command to verify the connector. It should compile the source, create balo and run the tests as follows:

```shell
Compiling source
        ldclakmal/sample:1.0.1

Creating balos
        target/balo/sample-2019r3-any-1.0.1.balo

Running tests
    ldclakmal/sample:1.0.1
I'm the before suite function!
I'm the before function!
I'm in test function!
I'm the after function!
I'm the after suite function!
        1 passing
        0 failing
        0 skipped
```

## Use the connector

Import the `ldclakmal/sample` module into the Ballerina project. And check the usage of `max` function.

```ballerina
import ballerina/io;
import ldclakmal/sample;

public function main() {
    int maxNo = sample:max(2, 10);
    io:println(maxNo);
}
```