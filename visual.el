;;;; visualize
;; color-themeの設定
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
;     (color-theme-hober)
;     (color-theme-zenburn)
;     (color-theme-arjen)
     (color-theme-dark-laptop)
     )
  )

;; load window position and size
;; (this settings depend on unique environments.)
(load-file "~/.emacs.d/window-pos-size.el")

;; window split
;(split-window (selected-window) 50 t)

;; フレームを透過
(when window-system
  (set-frame-parameter nil
                       'alpha 85
                       ) )
