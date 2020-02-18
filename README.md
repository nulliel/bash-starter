# bash-starter
--------------

**Bash Starter** aims to make scripting easier by providing
a powerful standard library and runtime checking to prevent
common bash mistakes.

## Table of Contents

- [Installation](#installation)
  - [Supported Bash Versions](#supported-bash-versions)

## Installation

### Supported Bash Versions

**Bash Starter** has been tested on and supports the following platforms:

- **Bash Versions**
    - >= 4.3 due to the use of namerefs

- **Platforms**
    - Arch Linux
    - OSX








# Caveats

* Global variables in modules are not currently supported.

# Getting Started

`curl -fsSL https://github.com/nulliel/bash-starter/releases/download/1.0.0/bash-starter-v1.0.0.tar.gz | tar -zx`

# Configuration

As outlined in the `your_script.sh` script, **BOOTSTRAP_DIR** is the
only required variable that be set. This folder should contain the
`bootstrap` file and will be used for any caching.

The following configurations are available:

### BASH_STARTER_VERSION

**Default**: `master`

The version tag to use for imports.

```bash
declare BASH_STARTER_VERSION="1.0.0"
```

### ADDITIONAL_IMPORT_SOURCES

An array containing additional sources to search for imports.

```bash
declare -a ADDITIONAL_IMPORT_SOURCES=(
    "some-url or folder"
)
```

### DISABLE_CACHE

The cache may be temporarily disabled by setting the `DISABLE_CACHE` variable.

This is useful for testing updates before saving files to the cache.


# Creating a project

```
#!/usr/bin/env bash

main()
{
    module.load "name"
}

source ./path/to/bootstrap
```

# Source vs Import

# TODO

- [ ] API Documentation

# Test

`./test/run.sh`
