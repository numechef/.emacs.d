This is .emacs.d setting files by numechef.

Requirements
-------------

* basic requirement.

git(or git-core)

* You must install "py27-epc" and ""py27-jedi"" before cloning.

cf.

```sh
sudo port install py27-epc py27-jedi
```

set submodules after cloning
-----------------------------

This .el group use submodule "jedi".
You must set submodules after cloning.

```sh
cd .emacs.d
git submodule update --init --recursive

```
