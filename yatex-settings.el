;;
;; YaTeX
;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/yatex")
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
                ("\\.ltx$" . yatex-mode)
                ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode)
                ("\\.clo$" . yatex-mode)
                ("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-kanji-code nil)
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)
(setq YaTeX-dvi2-command-ext-alist
      '(("[agx]dvi\\|PictPrinter" . ".dvi")
        ("gv" . ".ps")
        ("Preview\\|TeXShop\\|TeXworks\\|Skim\\|mupdf\\|xpdf\\|Firefox\\|Adobe" . ".pdf")))
;(setq tex-command "/usr/texbin/ptex2pdf -l -ot '-synctex=1'")
;(setq tex-command "/usr/texbin/ptex2pdf -l -u -ot '-synctex=1'")
(setq tex-command "/usr/local/bin/pdfplatex")
;(setq tex-command "/usr/local/bin/pdfplatex2")
;(setq tex-command "/usr/local/bin/pdfuplatex")
;(setq tex-command "/usr/local/bin/pdfuplatex2")
;(setq tex-command "/usr/texbin/pdflatex -synctex=1")
;(setq tex-command "/usr/texbin/lualatex -synctex=1")
;(setq tex-command "/usr/texbin/luajitlatex -synctex=1")
;(setq tex-command "/usr/texbin/xelatex -synctex=1")
;(setq tex-command "/usr/texbin/latexmk")
;(setq tex-command "/usr/texbin/latexmk -e '$latex=q/platex -synctex=1/' -e '$bibtex=q/pbibtex/' -e '$makeindex=q/mendex/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;(setq tex-command "/usr/texbin/latexmk -e '$latex=q/platex -synctex=1/' -e '$bibtex=q/pbibtex/' -e '$makeindex=q/mendex/' -e '$dvips=q/dvips %O -z -f %S | convbkmk -g > %D/' -e '$ps2pdf=q/ps2pdf %O %S %D/' -norc -gg -pdfps")
;(setq tex-command "/usr/texbin/latexmk -e '$latex=q/uplatex -synctex=1/' -e '$bibtex=q/upbibtex/' -e '$makeindex=q/mendex/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;(setq tex-command "/usr/texbin/latexmk -e '$latex=q/uplatex -synctex=1/' -e '$bibtex=q/upbibtex/' -e '$makeindex=q/mendex/' -e '$dvips=q/dvips %O -z -f %S | convbkmk -u > %D/' -e '$ps2pdf=q/ps2pdf %O %S %D/' -norc -gg -pdfps")
;(setq tex-command "/usr/texbin/latexmk -e '$pdflatex=q/pdflatex -synctex=1/' -e '$bibtex=q/bibtex/' -e '$makeindex=q/makeindex/' -norc -gg -pdf")
;(setq tex-command "/usr/texbin/latexmk -e '$pdflatex=q/lualatex -synctex=1/' -e '$bibtex=q/bibtexu/' -e '$makeindex=q/texindy/' -norc -gg -pdf")
;(setq tex-command "/usr/texbin/latexmk -e '$pdflatex=q/luajitlatex -synctex=1/' -e '$bibtex=q/bibtexu/' -e '$makeindex=q/texindy/' -norc -gg -pdf")
;(setq tex-command "/usr/texbin/latexmk -e '$pdflatex=q/xelatex -synctex=1/' -e '$bibtex=q/bibtexu/' -e '$makeindex=q/texindy/' -norc -gg -xelatex")
(setq bibtex-command (cond ((string-match "uplatex\\|-u" tex-command) "/usr/texbin/upbibtex")
                           ((string-match "platex" tex-command) "/usr/texbin/pbibtex")
                           ((string-match "lualatex\\|luajitlatex\\|xelatex" tex-command) "/usr/texbin/bibtexu")
                           ((string-match "pdflatex\\|latex" tex-command) "/usr/texbin/bibtex")
                           (t "/usr/texbin/pbibtex")))
(setq makeindex-command (cond ((string-match "uplatex\\|-u" tex-command) "/usr/texbin/mendex")
                              ((string-match "platex" tex-command) "/usr/texbin/mendex")
                              ((string-match "lualatex\\|luajitlatex\\|xelatex" tex-command) "/usr/texbin/texindy")
                              ((string-match "pdflatex\\|latex" tex-command) "/usr/texbin/makeindex")
                              (t "/usr/texbin/mendex")))
;(setq dvi2-command "/usr/bin/open -a Preview")
(setq dvi2-command "/usr/bin/open -a Skim")
;(setq dvi2-command "/usr/bin/open -a TeXShop")
;(setq dvi2-command "/usr/bin/open -a TeXworks")
;(setq dvi2-command "/usr/bin/open -a Firefox")
(setq dviprint-command-format "/usr/bin/open -a \"Adobe Reader\" `echo %s | sed -e \"s/\\.[^.]*$/\\.pdf/\"`")
;;
;; in yatex mode, resize window.
;;
(add-hook
 'yatex-mode-hook
 '(lambda ()
    (reftex-mode 1)
    (setq initial-frame-alist
          (append
           '((top . 0)     ; Y 位置(ピクセル数)
             (left . 744)  ; X 位置(ピクセル数)
             (width . 100) ; 幅(文字数)
             (height . 60) ; 高(文字数)
             ) initial-frame-alist))))

(defun skim-forward-search ()
  (interactive)
  (let* ((ctf (buffer-name))
         (mtf)
         (pf)
         (ln (format "%d" (line-number-at-pos)))
         (cmd "/Applications/Skim.app/Contents/SharedSupport/displayline")
         (args))
    (if (YaTeX-main-file-p)
        (setq mtf (buffer-name))
      (progn
        (if (equal YaTeX-parent-file nil)
            (save-excursion
              (YaTeX-visit-main t)))
        (setq mtf YaTeX-parent-file)))
    (setq pf (concat (car (split-string mtf "\\.")) ".pdf"))
    (setq args (concat ln " " pf " " ctf))
    (message (concat cmd " " args))
    (process-kill-without-query
     (start-process-shell-command "displayline" nil cmd args))))

(add-hook 'yatex-mode-hook
          '(lambda ()
             (define-key YaTeX-mode-map (kbd "C-c s") 'skim-forward-search)))

(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)))

;;
;; RefTeX with YaTeX
;;
;(add-hook 'yatex-mode-hook 'turn-on-reftex)
(add-hook 'yatex-mode-hook
          '(lambda ()
             (reftex-mode 1)
             (define-key reftex-mode-map (concat YaTeX-prefix ">") 'YaTeX-comment-region)
             (define-key reftex-mode-map (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)))
