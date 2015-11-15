;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs path settings                                                ;;
;; author: numechef  Time-stamp: <Mon Sep 15 21:59:50 JST 2014>       ;;
;; ( You should not write individual package path. )                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; load path settings
(setq load-path
      (append
       '(
         "/usr/local/share/emacs/site-lisp"
         "/opt/local/share/emacs/site-lisp"
         "/opt/local/share/emacs/site-lisp/slime"
         "/opt/local/share/emacs/site-lisp/apel"
         "/opt/local/share/emacs/23.1/site-lisp/emu"
         "/Applications/MacPorts/Emacs.app/Contents/Resources/site-lisp"
;	 "~/.emacs.d"
	 "~/.emacs.d/site-lisp"
	 "~/.emacs.d/site-lisp/webkit"
         )
       load-path)
      )

(setq exec-path
      (append
       '(
         "/opt/local/bin" "/opt/local/sbin"
         "/usr/bin" "/usr/sbin" "/bin" "/sbin"
         "/usr/X11/bin"
	 "~/bin"
         )
       exec-path)
      )
