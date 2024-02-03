# Dotfiles

Contains all the dotfiles for my personal development environment and machine setup

## Requirements

### Git

```
$ brew install git
```

### Stow

```
$ brew install stow
$ stow --verison
```

## Installation

Clone this git repo in `$HOME` directory

```
$ cd ~
$ git clone git@github.com:edwincarlflores/dotfiles.git
```

Use GNU stow to create symlinks from the `$HOME` pointing to the config files inside the `dotfiles` directory

```
$ cd ~/dotfiles
$ stow .
```

## Notable commands

Create symlinks for config files that does not exist in `$HOME` directory

```
$ cd ~/dotfiles
$ stow .
```

Create symlinks for config files that already exist in `$HOME` directory

```
$ cd ~/dotfiles
$ stow --adopt .
```
