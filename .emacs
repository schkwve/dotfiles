;; ======= ;;
;; GENERAL ;;
;; ======= ;;

; disable startup message
(setq inhibit-startup-message t)

; disable annoying toolbars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

; disable visible bell
(setq visible-bell nil)

; make esc quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; ================== ;;
;; PACKAGE MANAGEMENT ;;
;; ================== ;;

; import package manager
(require 'package)

; some nice repos
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

; make sure every used package is installed
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; useful packages
(use-package diminish)
(use-package counsel)
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; ===== ;;
;; THEME ;;
;; ===== ;;

; set a nice font
(set-face-attribute 'default nil :font "Fira Code Retina" :height 120)

; get a nice theme
(load-theme 'kanagawa)

; show line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
; ... but only on some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; ====== ;;
;; IGNORE ;;
;; ====== ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e70e87ad139f94d3ec5fdf782c978450fc2cb714d696e520b176ff797b97b8d2" default))
 '(package-selected-packages
   '(counsel ivy diminish kanagawa-theme command-log-mode which-key theme-changer lsp-mode git-gutter find-file-in-project evil-commentary doom-themes company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
