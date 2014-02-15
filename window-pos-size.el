
;; window position and size

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DO NOT PUSH and COMMIT this file.                    ;;
;; Because this settings depend on unique environments. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when window-system
;; window location(don't work well)
  (setq initial-frame-alist
        (append
         '((top . 0)    ; Y 位置(ピクセル数)
           (left . 853)    ; X 位置(ピクセル数)
           (width . 82)    ; 幅(文字数)
           (height . 60)   ; 高(文字数)
           ) initial-frame-alist ) )
;(setq initial-frame-alist '(
;                           (top . 0)
;                           (left . 910)
;                           (width . 72)
;                           (height . 60)
;                           ))
)
