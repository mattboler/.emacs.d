;; -------------------
;; Base Emacs Settings
;; -------------------

;; Configure Package Repositories
;; ------------------------------

;; Define repositories
(require 'package)
(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	         '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
	    use-package-expand-minimally t))


;; Performance Tweaks
;; --------------------

;; Increase garbage collection threshold to 50MB
(setq gc-cons-threshold (* 50 1024 1024))

;; Increase filesize warning threshold to 50MB
(setq large-file-warning-threshold (* 50 1024 1024))


;; Interface Settings
;; ------------------

;; Set default font
(set-face-attribute 'default nil
		            :family "Fira Code"
		            :height 120
		            :weight 'normal
		            :width 'normal)

;; Disable extra GUI elements
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Better scrolling
(setq scroll-margin 0
      scroll-conservatively 101 ; > 100
      scroll-preserve-screen-position t
      auto-window-vscroll nil)

;; Enable line and column numbers
(line-number-mode +1)
(column-number-mode +1)
(global-display-line-numbers-mode +1)


;; Text Editing Settings
;; ---------------------

;; Indents are 4 spaces
(defvar matt/indent-width 4)
(setq-default indent-tabs-mode nil
              tab-width matt/indent-width)

;; Sensible indenting style
(setq c-default-style "linux")
(setq-default c-basic-offset matt/indent-width)

;; Auto-reload files when changed
(global-auto-revert-mode t)


(provide 'base)
