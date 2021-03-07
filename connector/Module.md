# Ballerina Connector Quickstart

This is a sample Ballerina connector for demonstration purpose.

## Compatibility

| Ballerina Language Version |
|:--------------------------:|
| Swan Lake Alpha            |

## Getting started

> Refer the [Quick Tour](https://ballerina.io/learn/getting-started/quick-tour/) guide to download and install Ballerina.

Move inside to `ballerina-connector-quickstart` directory and execute `$ ballerina build connector` command to verify the connector. It should compile the source and run the tests as follows:

```shell
Compiling source
        ldclakmal/connector:1.1.0

Running Tests
        connector
I'm the before suite function!
I'm the before function!
I'm in test function!
I'm the after function!
I'm the after suite function!

                [pass] testFunction

                1 passing
                0 failing
                0 skipped


Creating bala
        target/bala/ldclakmal-connector-any-1.1.0.bala

Generating executable
        connector/target/bin/connector-1.1.0.jar
```

## Use the connector

Import the `ldclakmal/connector` module into the Ballerina project and check the usage of `max` function.

```ballerina
import ballerina/io;
import ldclakmal/connector;

public function main() {
    int maxNo = connector:max(2, 10);
    io:println(maxNo);
}
```
