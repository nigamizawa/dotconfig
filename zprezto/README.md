# Prezto

## Installation

1. Clone the repository:


```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

2. Create a new Zsh configuration by copying/linking the Zsh configuration files 
provided:

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.config/zprezto/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

## Updating

Run `zprezto-update` to automatically check if there is an update to Prezto. If there are no file conflicts, Prezto and its submodules will be automatically updated. If there are conflicts you will be instructed to go into the `$ZPREZTODIR` directory and resolve them yourself.

To pull the latest changes and update submodules manually:

```
cd $ZPREZTODIR
git pull
git submodule sync --recursive
git submodule update --init --recursive
```