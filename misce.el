;; misce


;; テキストエンコーディングとしてUTF-8を優先使用
(prefer-coding-system 'utf-8)

;; overwrite selected region
(delete-selection-mode t)

;; 起動時のメッセージを非表示
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; C-kで行全体を削除
;(setq kill-whole-line t)

;; M-RET でフルスクリーン切り替え
(define-key global-map (kbd "M-RET") 'ns-toggle-fullscreen)

;; Emacs serverを起動
;(if window-system (server-start))

;; 終了してもカーソル位置を記録
(when (require 'session nil t)
  (setq session-initialize '(de-saveplace session keys menus places)
        session-globals-include '((kill-ring 50)
                                  (session-file-alist 500 t)
                                  (file-name-history 10000)))
  (setq session-globals-max-string 100000000)
  (setq history-length t)
  (add-hook 'after-init-hook 'session-initialize))

;; "yes or no"を"y or n"に
(fset 'yes-or-no-p 'y-or-n-p)

;; 余計なものを表示しない
(when window-system
  (tool-bar-mode 0) ;; ツールバー
  (toggle-scroll-bar nil)) ;; スクロールバー

;; キーワードのカラー表示を有効化
(global-font-lock-mode t)

;; 選択範囲をハイライト
(setq-default transient-mark-mode t)

;; バッファ一覧をまともに
;(global-set-key "\C-x\C-b" 'bs-show)

;; バッファを変えてもハイライトしたまま
(setq highlight-nonselected-windows t)

;; 対応するカッコをハイライト
(show-paren-mode 1)

;; 対応する括弧が画面内になければ、括弧内を強調表示
(setq show-paren-ring-bell-on-mismatch t)

;; 括弧と括弧内に色を付ける
(setq show-paren-style 'mixed)

;; カーソルの位置が何文字目か表示する
(column-number-mode t)

;; カーソルの位置が何行目か表示する
(line-number-mode t)

;; 行末の空白を表示
(setq-default show-trailing-whitespace t)

;; 自動改行位置
;(setq fill-column 72)

;; Shift + カーソルキーでBuffer間を移動
;(windmove-default-keybindings)

;; 終端は先頭に戻る
;(setq windmove-wrap-around t)

;; Visible-Bell有効（エラー時画面反転、Bell音無効化）
(setq visible-bell t)

;; バッファ末尾に余計な改行コードを防ぐための設定
(setq next-line-add-newlines nil)

;; ビープ音を消す
(setq ring-bell-function 'ignore)

;; 行番号を表示(linum.el)
(require 'linum)
(global-linum-mode)
