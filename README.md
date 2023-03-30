### Camper

nix and vim dotfiles plus ansible playbooks for quickly dropping common software onto servers

Currently for software we have

* neovim
* anaconda

And for target systems we have

* Ubuntu
* Arch

You can use eg,

```
rg -l '$USER' | xargs sed -i 's/$USER/cr0ax/g'
```

to set your username before running the playbooks. Please note the flavor of quote mark is important in the above.
