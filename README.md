# A example for nixos with wsl2 using vscode wsl remote

This repository is one of the nixos configurations I am using. In theory, you are in a wsl nixos that can use flake and then use the following command to get a nixos that can be connected using vscode.

```shell
sudo nixos-rebuild switch --flake .
```

By the way, after a lot of practice, I finally abandoned the development environment of using remote vscode. Because I couldn't configure my ssh key in nixos and I wanted to use it to connect to github and sign my commits (especially this). My practice method is to create a soft link, which will link to somewhere in windows. Although it crosses the file system, thanks to the excellent functions of nixos and flake, I can compile them in the nixos with wsl. And that's enough.