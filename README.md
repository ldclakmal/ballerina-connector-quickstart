# Ballerina Connector Quickstart

[![Build](https://github.com/ldclakmal/ballerina-connector-quickstart/actions/workflows/master.yml/badge.svg)](https://github.com/ldclakmal/ballerina-connector-quickstart/actions/workflows/master.yml)

This is a sample Ballerina connector for demonstration purpose.

## Compatibility

|                            | **Version**      |
|----------------------------|------------------|
| Ballerina Language         | Swan Lake Beta 3 |
| Java Development Kit (JDK) | 11               |

## Getting started

1. Refer to the [Setting up Ballerina](https://ballerina.io/learn/user-guide/getting-started/setting-up-ballerina/) guide to download and install Ballerina.
2. Clone the [ballerina-connector-quickstart](https://github.com/ldclakmal/ballerina-connector-quickstart) GitHub repository.
3. Move inside to `ballerina-connector-quickstart/connector` directory and execute `$ bal build connector`. It should compile the source, run the tests and generates the executable as follows:

```shell
Compiling source
        ldclakmal/connector:1.0.0

Running Tests

        connector

                [pass] testMax

                1 passing
                0 failing
                0 skipped


Generating executable
        target/bin/connector.jar
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
