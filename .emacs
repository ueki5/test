(add-hook 'set-language-environment-hook 
	  (lambda ()
	    (when (equal "ja_JP.UTF-8" (getenv "LANG"))
	      (setq default-process-coding-system '(utf-8 . utf-8))
	      (setq default-file-name-coding-system 'utf-8))
	    (when (equal "Japanese" current-language-environment)
	      (setq default-buffer-file-coding-system 'iso-2022-jp))))

;; (set-language-environment "Japanese")
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq default-buffer-file-coding-systems 'utf-8)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(color-theme-legal-frame-parameters "\\(color\\|mode\\|font\\|height\\|width\\)$")
 '(color-theme-selection "WordPerfect" nil (color-theme))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(add-to-list 'default-frame-alist
              '(font . "-Adobe-Courier-Bold-R-Normal--24-230-75-75-M-80-ISO8859-1"))
;;(add-to-list 'default-frame-alist
;;              '(font . "-Adobe-Courier-Bold-R-Normal--34-240-100-100-M-200-ISO8859-1"))
;;(add-to-list 'default-frame-alist
;;           '(font . "-Misaki-Gothic-Book-R-Normal--34-240-100-100-m-200-ISO8859-1"))
;; -misaki-gothic-book-r-normal--0-0-0-0-c-0-iso10646-1
;; -misaki-gothic-book-r-normal--0-0-0-0-c-0-iso8859-1
;; -misaki-gothic-book-r-normal--0-0-0-0-c-0-jisx0201.1976-0
;; -misaki-gothic-book-r-normal--0-0-0-0-c-0-jisx0208.1983-0
;; -misaki-gothic-book-r-normal--0-0-0-0-c-0-jisx0212.1990-0
;; -misaki-gothic-book-r-normal--0-0-0-0-m-0-iso10646-1
;; -misaki-gothic-book-r-normal--0-0-0-0-m-0-iso8859-1
;; -misaki-gothic-book-r-normal--0-0-0-0-m-0-jisx0201.1976-0
;; -misaki-gothic-book-r-normal--0-0-0-0-m-0-jisx0208.1983-0
;; -misaki-gothic-book-r-normal--0-0-0-0-m-0-jisx0212.1990-0
;; -misaki-gothic-book-r-normal--0-0-0-0-p-0-iso10646-1
;; -misaki-gothic-book-r-normal--0-0-0-0-p-0-iso8859-1
;; -misaki-gothic-book-r-normal--0-0-0-0-p-0-jisx0201.1976-0
;; -misaki-gothic-book-r-normal--0-0-0-0-p-0-jisx0208.1983-0
;; -misaki-gothic-book-r-normal--0-0-0-0-p-0-jisx0212.1990-0

(load "/usr/local/site-lisp/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(setq inferior-haskell-hook
      (function
       (lambda ()
	 (set-buffer-file-coding-system 'utf-8)
	 (set-buffer-process-coding-system 'utf-8 'utf-8))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
