# Ballerina Connector Quickstart

This is a sample Ballerina connector for demonstration purpose.

## Getting started

1. Refer to the [Setting up Ballerina](https://ballerina.io/learn/user-guide/getting-started/setting-up-ballerina/) guide to download and install Ballerina.
2. Clone the [ballerina-connector-quickstart](https://github.com/ldclakmal/ballerina-connector-quickstart) GitHub repository.
3. Move inside to `ballerina-connector-quickstart` directory and execute `$ ballerina build connector`. It should compile the source, run the tests and generates the executable as follows:

```shell
Compiling source
        ldclakmal/connector:1.2.0

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


Generating executable
        connector/target/bin/connector.jar
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
