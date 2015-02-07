
;; General
;;------------------------------------------------------------
(setq inhibit-startup-message t)

;GUI Settings
(when (display-graphic-p)
  (tool-bar-mode -1) ;disable toolbar
  (scroll-bar-mode -1) ;disable scrollbar
  (auto-image-file-mode t) ;image support
  )


(fset 'yes-or-no-p 'y-or-n-p)

;no bell
(setq visible-bell t) 

;parenthess
(show-paren-mode t)n
(setq show-paren-style 'parentheses)


;; View Setting
;;------------------------------------------------------------
(set-default-font "Menlo 13")
(load "~/.emacs.d/lisp/base16-eighties-theme.el")

;; Program Setting
;;------------------------------------------------------------
(setq scheme-program-name "/usr/local/bin/scheme")

;; Encoding
;;------------------------------------------------------------
(prefer-coding-system 'utf-8)

;; Plugin
;;------------------------------------------------------------
;; Auto complete
;;(require 'auto-complete-config)
;;(ac-config-default)
