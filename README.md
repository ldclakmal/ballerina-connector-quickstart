# Ballerina Connector Quickstart

[![Build](https://github.com/ldclakmal/ballerina-connector-quickstart/actions/workflows/master.yml/badge.svg)](https://github.com/ldclakmal/ballerina-connector-quickstart/actions/workflows/master.yml)

This is a sample Ballerina connector for demonstration purpose.

## Compatibility

|                            | **Version**       |
|----------------------------|-------------------|
| Ballerina Language         | Swan Lake Alpha 2 |
| Java Development Kit (JDK) | 11                |

## Getting started

1. Refer to the [Quick Tour](https://ballerina.io/learn/getting-started/quick-tour/) guide to download and install Ballerina.
2. Clone the [ballerina-connector-quickstart](https://github.com/ldclakmal/ballerina-connector-quickstart) GitHub repository.
3. Move inside to `ballerina-connector-quickstart` directory and execute `$ ballerina build connector`. It should compile the source, run the tests and generates the executable as follows:

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

## Samples

Import the `ldclakmal/connector` module into your Ballerina project and check the usage of sample `max` function.

```ballerina
import ballerina/io;
import ldclakmal/connector;

public function main() {
    int maxNo = connector:max(2, 10);
    io:println(maxNo);
}
```
