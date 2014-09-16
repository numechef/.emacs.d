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

Cloning
-----------------------------

Be careful to cloning. This repo. conflict with existing your `.emacs.d` settings.
Before cloning, I recommand to backup your `.emacs.d` settings.

```sh
cd
cp -r .emacs.d dot-emacs-old
rm -rf .emacs.d
```

After the backup, you type following command.

```sh
cd
git clone git://github.com/numechef/.emacs.d .emacs.d
```

To create `.elc` files and make the load time fast, using the following command, byte-compile all `.el` files under the `~/.emacs.d` directory.

```sh
emacs --batch --eval '(byte-recompile-directory "~/.emacs.d")'
```

set submodules after cloning
-----------------------------

This .el group use submodule "jedi".
You must set submodules after cloning.

```sh
cd .emacs.d
git submodule update --init --recursive

```
