<p align="center">
    <h1>Bash Starter</h1>
</p>

<p align="center">Making scripting easier by providing a powerful standard library and runtime checks to prevent common bash mistakes.</p>

<p align="center">

</p>

## Table of Contents

- [How it Works](#how-it-works)
    - [Module Loading](#module-loading)
- [Installation](#installation)
    - [Supported Bash Versions](#supported-bash-versions)
    - [Curl](#curl)
    - [Targeted Versions](#targeted-versions)
- [Usage](#usage)
    - [Configuration](#configuration)
    - [Remote Sources](#remote-sources)

## How it Works

**Bash Starter** makes use of a single file ([your_script.sh](/your_script.sh))
for configuration and initial bootstrapping of the library

## Module Loading

The core feature of this project is its module loading system. A module is a normal
bash file that can be imported from a [remote source](#remote-sources). This allows
a project to only pull in the modules it needs as a remote may house a large number
of modules.








These files are cached locally and
should be committed.

This allows multi




The core feature of this project is its module loading system. A module is a normal
bash file that will be analyzed





## Installation

### Supported Bash Versions

**Bash Starter** has been tested on and supports the following platforms:

- **Bash Versions**
    - \>= 4.3 due to the use of namerefs

- **Platforms**
    - Arch Linux
    - OSX

### Curl

Pulling **Bash Starter** into a project is extremely easy using `curl`.

```bash
curl -o script_name https://raw.githubusercontent.com/sribich/bash-starter/master/your_script.sh
```

### Targeted Versions








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
