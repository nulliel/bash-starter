# bash-starter

# Caveats

* Global variables in modules are not currently supported.

# Getting Started

`curl -fsSL https://github.com/nulliel/bash-starter/releases/download/1.0.0/bash-starter-v1.0.0.tar.gz | tar -zx`

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
