### Camper

nix and vim dotfiles plus ansible playbooks for quickly setting up configs on servers and my laptop

Currently for software we have

* nix home manager - neovim,golang
* anaconda
* nvidia drivers

And for target systems we have

* Ubuntu
* Arch

Ubuntu is the most complete right now.

You can use eg,

```
rg -l 'ubuntu' | xargs sed -i 's/ubuntu/cr0ax/g'
```

to set your username before running the playbooks.
