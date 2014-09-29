;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; author: numechef  Time-stamp: <Fri Sep 26 21:51:12 JST 2014>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; automatically insert the date of last modification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; If the code Time-stamp: `<>` or Time-stamp: `" "` exist (remove reverse-prime`)
;; in the upper of 8-th line of the modified file, auto-insert date at this space.
(require 'time-stamp)
;; 日本語で日付を入れたくないのでlocaleをCにする
(defun time-stamp-with-locale-c ()
  (let ((system-time-locale "C"))
    (time-stamp)
    nil))
(if (not (memq 'time-stamp-with-locale-c write-file-hooks))
    (add-hook 'write-file-hooks 'time-stamp-with-locale-c))

(setq time-stamp-format "%3a %3b %02d %02H:%02M:%02S %Z %:y")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'anything)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; share data bewtween clipboard(osx) and killing(emacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun copy-from-osx ()
 (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
 (let ((process-connection-type nil))
     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
       (process-send-string proc text)
       (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-pep8 (for python)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/elpa/py-autopep8-20140908.31/")
(require 'py-autopep8)
(add-hook 'before-save-hook 'py-autopep8-before-save)
(setq py-autopep8-options '("--max-line-length=100"))

;; ecb settings
(load-file "~/.emacs.d/ecb.el")
