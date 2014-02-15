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
;	 "/Users/yuuichi/.emacs.d"
;	 "/Users/yuuichi/.emacs.d/site-lisp"
	 "~/.emacs.d"
	 "~/.emacs.d/site-lisp"
         )
       load-path)
      )

(setq exec-path
      (append
       '(
         "/opt/local/bin" "/opt/local/sbin"
         "/usr/bin" "/usr/sbin" "/bin" "/sbin"
         "/usr/X11/bin"
;;	 "/Users/yuuichi/bin"
	 "~/bin"
         )
       exec-path)
      )