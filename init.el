;; ---------------
;; My Emacs Config
;; ---------------

;; Who am I?
(setq user-full-name "Matt Boler")
(setq user-mail-address "meboler@auburn.edu")

;; Find config files
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Basic emacs configuration
(require 'base)

;; Keybindings
;; -----------

;; ESC exits chording
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Reload files automatically
(global-auto-revert-mode t)

;; Easy function for quick config reloading
(defun reload-config ()
  (interactive)
  (load-file (concat user-emacs-directory "init.el")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
