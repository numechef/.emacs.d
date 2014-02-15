;;;;;;;;;;;;;;;;;
;; mac key mode
;;;;;;;;;;;;;;;;;
(require 'redo)
(require 'mac-key-mode)
(mac-key-mode 1)
;(setq mac-command-modifier 'alt mac-option-modifier 'meta)

;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete mode
;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete/")
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-dwim t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")
(ac-config-default)

(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols t)))
;; 以下、自動で補完する人用
(setq ac-auto-start t)
(setq ac-delay 0.05)  ;; n秒後に補完開始
(setq ac-use-fuzzy t)  ;; 曖昧マッチ有効
(setq ac-use-comphist t)  ;; 補完推測機能有効
(setq ac-auto-show-menu 0.05)  ;; n秒後に補完メニューを表示
(setq ac-quick-help-delay 0.5)  ;; n秒後にクイックヘルプを表示
(setq ac-ignore-case nil)  ;; 大文字・小文字を区別する
(setq ac-disable-faces nil) ;; 文字列リテラルでも有効

;; python用

;; jedi
(add-to-list 'load-path "~/.emacs.d/site-lisp/jedi/emacs-deferred")
(add-to-list 'load-path "~/.emacs.d/site-lisp/jedi/emacs-epc")
(add-to-list 'load-path "~/.emacs.d/site-lisp/jedi/emacs-ctable")
(add-to-list 'load-path "~/.emacs.d/site-lisp/jedi/emacs-jedi")

;===============
; jedi (package.elの設定より下に書く)
;===============
(require 'epc)
(require 'auto-complete-config)
(require 'python)

;;;;; PYTHONPATH上のソースコードがauto-completeの補完対象になる ;;;;;
(setenv "PYTHONPATH" "/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages")
(require 'python)
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:ac-setup)
;(define-key python-mode-map (kbd "<C-tab>") 'jedi:complete)
(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; tex用 auto-complete-tex

(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-latex")
(require 'auto-complete-latex)
(setq ac-l-dict-directory "~/.emacs.d/site-lisp/auto-complete-latex/ac-l-dict")

; keywords user setting
(setq ac-l-source-user-keywords*
      '("aaa" "bbb" "ccc"))
; set keywords. if you need to use user-keywords*, uncomment its line.
(setq ac-l-sources
  '(
;    ac-l-source-user-keywords
    ac-l-source-basic-commands
    ac-l-source-package-commands
    ;; ac-l-source-primitives
    ;; ac-l-source-style-commands
    ;; ac-l-source-latex-dot-ltx
    ac-l-source-basic-options-&-variables
    ac-l-source-package-options-&-variables
    ))

(defun yatex-mode-hook-func ()
  (interactive)
  (local-set-key "\C-cf" 'fill-region)
  (when (require 'auto-complete-latex nil t)
    (ac-l-setup)
    (auto-complete-mode t)))

;(add-hook 'yatex-mode-hook)
;(add-hook 'yatex-mode-hook-func)
(add-hook 'yatex-mode-hook 'yatex-mode-hook-func)
