# HEARTH

Easily manage what will be loaded in your shell environment

## Installation

Clone project and source hearth.sh in .*rc, e.g. .bashrc file.

## Directory Structure

Functionality is divided in

* env
* paths
* aliases
* functions

For each functionality we have a folder with configurable scripts and a file that will always be loaded.

For example for env we have the env.d directory and env.sh script.

Each *.d directory has three sub-folders

* available
* secret
* enabled

Every symbolic link in enabled directory will be sourced on start up. In available we have recipes that will be committed to repository.
In secret you can add anything that must be excluded from the repository like tokens.

## ESTIA

Command Line Application to manage your hearth installation.
No configuration needed, it's automatically loaded to your path.

## Commands

### edit

Open hearth folder in your $EDITOR for editing.

``` bash
estia edit
```

### list

List all recipes, available and enabled.

``` sh
estia list
```

### create

Create a new recipe

``` sh
estia create|create-secret <type> <filename>
```

Example creating a new environmental variable script.
``` sh
estia create env env-var.sh
```

or

Example creating a new environmental variable script.
``` sh
estia create-secret env env-var.sh
```

### enable

Enable a recipe

``` sh
estia enable <type> <filename>
```

Example enabling an environmental variable script.
``` sh
estia enable env env-var.sh
```

### disable

Disable a recipe

``` sh
estia disable <type> <filename>
```

Example disabling an environmental variable script.
``` sh
estia disable env env-var.sh
```
