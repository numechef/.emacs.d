;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs initialization                                               ;;
;; author: numechef  Time-stamp: <Mon Oct 06 17:21:48 JST 2014>       ;;
;; ( You should write specifing settings to indivisual files. )       ;;
;;                                                                    ;;
;; * byte-compile all files under the `.emacs.d` by command line:     ;;
;; emacs --batch --eval '(byte-recompile-directory "~/.emacs.d")'     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; loadpath
(load-file "~/.emacs.d/path.el")

;; install and package manager
(load-file "~/.emacs.d/install.el")

;; basic packages(long loading time)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; You must load this line at the first luanch.                ;;;;
;;;; Always you comment-out this line, If you have done it once. ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(load-file "~/.emacs.d/install_packages.el")

;; language settings
(load-file "~/.emacs.d/lang.el")

;; visualization
(load-file "~/.emacs.d/font.el")

;; miscellanies
(load-file "~/.emacs.d/misce.el")

;; input-utils(mac-key-mode, auto-complete, et al.)
(load-file "~/.emacs.d/input-utils.el")

;; visualization
(load-file "~/.emacs.d/visual.el")

;; yatex
(load-file "~/.emacs.d/yatex-settings.el")

;; browser
(load-file "~/.emacs.d/browser.el")

;; edit support
(load-file "~/.emacs.d/edit.el")
