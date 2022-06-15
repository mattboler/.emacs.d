;; -------------------------
;; Emacs Appearance Settings
;; -------------------------

;; Core Emacs Appearance Settings
;; ------------------------------

;; Set font
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
(setq display-line-numbers-width-start t)

;; Theme Settings
;; --------------

;; todo

(provide 'appearance)
