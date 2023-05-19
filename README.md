# dotfiles

Clone this repo:
```console
$ git clone --recurse-submodules https://git.sr.ht/~jswank/dotfiles
```

Install my dotfiles:
```console
$ ./install
```

(which just runs: `ls -d */ | tr -d / | xargs stow -R`)

There are two potential gotchas:

1. `stow` is not installed on the system. Be sure to install it. 

2. There submodules in this repo (mostly neovim plugins) and they didn't get
   populated when you cloned the repo.

This repo should have been cloned using the --recurse-submodules flag, i.e.
```console
$ git clone --recurse-submodules https://git.sr.ht/~jswank/dotfiles
```

But, since you forgot, fix this by running:
```console
$ git submodule update --init --recursive
```
