;; numbers
(global-display-line-numbers-mode +1)
;; disable gui
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;; indent
(setq standard-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
;; white spaces
(setq show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; transparency
(set-frame-parameter (selected-frame) 'alpha '(75 75))
(add-to-list 'default-frame-alist '(alpha 75 75) )
;; font
(add-to-list 'default-frame-alist '(font . "Iosevka 8"))
;; repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; use packages
(package-install 'use-package)
;; doom themes (tomorrow night)
(use-package doom-themes
  :ensure t
  :init (load-theme 'doom-nord t))
;; colorful pranthesis
(use-package rainbow-delimiters
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)))
;; neotree
(use-package neotree
  :bind (("C-," . neotree-toggle))
  :config
    (setq neo-theme (if (display-graphic-p) 'arrow)))
;; evil mode (vim key combo's)
(use-package evil
  :ensure t
  :init
  (evil-mode 1))
;;;; codeing
;; company
(use-package company
  :ensure t
  :bind (("C-<tab>" . company-complete))
  :config
  (global-company-mode))
;; go-mode
(use-package go-mode
  :ensure t
  :bind (
         :map go-mode-map
         ("C-c C-r" . go-remove-unused-imports)
         ("C-c C-g" . go-goto-imports)
         ("C-c C-f" . gofmt)
         ("C-c C-k" . godoc))
  :config
  (progn
    (unless (member "/usr/local/go/bin" (split-string (getenv "PATH") ":"))
      (setenv "PATH" (concat "/home/hooman/go/bin/" (getenv "PATH"))))
    (setenv "GOPATH" (concat (getenv "HOME") "/go"))
    ;; (setq gofmt-command "/usr/local/go/bin/gofmt")
    (add-hook 'before-save-hook 'gofmt-before-save)))
;; company-go
(use-package company-go
	:after go-mode
	:ensure t
	:defer t
	:config
	(push 'company-go company-backends))
(require 'company)
(require 'company-go)
;; ivy
(use-package ivy
  :ensure t
  :config
	(ivy-mode +1))
;; doom modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
    (setq doom-modeline-height 20))
;; added automatical
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(doom-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
