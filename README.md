#

## Development

### Pre-requisites

- Python 3.9
- [Pipenv](https://pipenv.pypa.io/en/latest/#install-pipenv-today)
- Make

### Getting Started

The `Makefile` has everything required to set up the development environment locally.

1. Prepare the `pipenv` shell:
    ```
    $ make develop
    ```

1. Install dependencies:
    ```
    $ make install
    ```

1. Run unit tests:
    ```
    $ make test
    ```

1. Start the app.  By default, it listens on the port 3000.
    ```
    $ make start-app
    ```

1. To format the code:
    ```
    $ make format-code
    ```

