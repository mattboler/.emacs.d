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

;; Appearance settings
(require 'appearance)

;; TODO: MOVE THESE TO A FILE

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
