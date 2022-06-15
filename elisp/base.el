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

;; Set customization file
;; ----------------------
(defvar matt/custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq custom-file matt/custom-file) 
(if (file-exists-p matt/custom-file)
    (load custom-file))

;; Performance Tweaks
;; --------------------

;; Increase garbage collection threshold to 50MB
(setq gc-cons-threshold (* 50 1024 1024))

;; Increase filesize warning threshold to 50MB
(setq large-file-warning-threshold (* 50 1024 1024))

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
