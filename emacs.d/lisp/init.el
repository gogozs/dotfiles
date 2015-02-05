;; General
(setq inhibit-startup-message t)

;disable toolbar					;
(tool-bar-mode -1)

;disable scrollbar
(scroll-bar-mode -1)

;image support
(auto-image-file-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

;no bell
(setq visible-bell t) 

;parenthess
(show-paren-mode t)
(setq show-paren-style 'parentheses)


;; View Setting
(set-default-font "Menlo 13")
(load "~/.emacs.d/lisp/base16-tomorrow-theme.el")

;; Program Setting
(setq scheme-program-name "/usr/local/bin/scheme")
