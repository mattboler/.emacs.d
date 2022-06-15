;; ---------------
;; My Emacs Config
;; ---------------
(setq user-full-name "Matt Boler")
(setq user-mail-address "meboler@auburn.edu")

;; Performance Settings
;; --------------------

;; Increase garbage collection threshold to 50MB
(setq gc-cons-threshold (* 50 1024 1024))

;; Increase filesize warning threshold to 50MB
(setq large-file-warning-threshold (* 50 1024 1024))

;; Interface Settings
;; ------------------

;; Disable all GUI elements
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Disable startup scree
(setq inhibit-startup-screen t)

;; Enable line numbers
(line-number-mode +1)
(global-display-line-numbers-mode +1)

;; Show matched parenthesis
(show-paren-mode 1)

;; Set font
(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 120
		    :weight 'normal
		    :width 'normal)

;; Keybindings
;; -----------

;; ESC exits chording
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Quality-of-Life Fixes
;; ---------------------

;; y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-no-p)

;; Reload files automatically
(global-auto-revert-mode t)

;; No more backup files everywhere
(setq make-backup-files nil)

;; Stop autosave
(setq auto-save-default nil)

;; No lockfiles
(setq create-lockfiles nil)
