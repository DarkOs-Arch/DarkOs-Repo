
 
darkOS is a package repository for Arch Linux maintained by darkOS. we created this repository out of necessity after some of our AUR packages were removed by the AUR team. They claim these plans are not included in the AUR as they are “for one user” plans. This is clearly the case. We don't need these packages ourselves, But there are many others who use these packages

Adding a third-party repository (like this one) is easy.
```
[darkOS-repo]
SigLevel = Optional DatabaseOptional
Server = https://sourceforge.net/projects/darkos-repo/files/$repo/$arch
Server = https://gitlab.com/NovitaOS/$repo/-/raw/master/$arch
```
Then, sync the repositories and update your system with:
  ```sudo pacman -Syyu```
And, then:
  ```sudo pacman -S name-of-package```

# Official Repository Of DarkOs

