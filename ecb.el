;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for ECB (Emacs Code Browser)
;; Author: numechef  Time-stamp: <Fri Sep 26 21:49:52 JST 2014>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;
;; source-path
;;
(setq ecb-source-path
      '(
	"~"
	"~/Dropbox/"
	"~/Dropbox/devel/"
	))
;;
;; Layout
;;
(setq ecb-layout-name
;;      "left-dir-plus-speedbar")
;;
      "leftright2")
;;
;; -------------------------------------------------------
;; |             |                         |             |
;; | Directories |                         |  Methods    |
;; |             |                         |             |
;; |             |                         |             |
;; |             |                         |             |
;; |             |                         |             |
;; |             |                         |             |
;; |             |          Edit           |             |
;; |-------------|                         |-------------|
;; |             |                         |             |
;; | Sources     |                         |  History    |
;; |             |                         |             |
;; |             |                         |             |
;; |             |                         |             |
;; |             |                         |             |
;; -------------------------------------------------------
;; |                                                     |
;; |                   Compilation                       |
;; |                                                     |
;; -------------------------------------------------------
