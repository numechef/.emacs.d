;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; automatically insert the date of last modification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; If the code Time-stamp: `<>` or Time-stamp: `" "` exist (remove reverse-prime`)
;; in the upper of 8-th line of the modified file,
;; auto-insert date at this space.
;;

(require 'time-stamp)

;; 日本語で日付を入れたくないのでlocaleをCにする
(defun time-stamp-with-locale-c ()
  (let ((system-time-locale "C"))
    (time-stamp)
    nil))

(if (not (memq 'time-stamp-with-locale-c write-file-hooks))
    (add-hook 'write-file-hooks 'time-stamp-with-locale-c))

(setq time-stamp-format "%3a %3b %02d %02H:%02M:%02S %Z %:y")
