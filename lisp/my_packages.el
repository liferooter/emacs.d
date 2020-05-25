;;; my_packages.el --- packages settings

;;; Commentary:
;;; Please, write all packages configuration here

;;; Code:

;; --- Repositories:
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; --- Packages

;; Doom themes
(require 'doom-themes)
(doom-themes-visual-bell-config)
(doom-themes-treemacs-config)
(doom-themes-org-config)

;; Nlinum
(require 'nlinum)

;; Flycheck
(require 'flycheck)

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Ivy
(require 'ivy)
(require 'counsel)
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)

;; Projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Diff hl
(add-hook 'diff-hl-mode-hook 'diff-hl-flydiff-mode)

;; Yasnippet
(require 'yasnippet)
(add-hook 'prog-mode-hook 'yas-minor-mode)

;; Treemacs
(require 'treemacs)
(global-set-key (kbd "C-x t") 'treemacs)
(define-key treemacs-mode-map (kbd "C-x C-f") 'treemacs-find-file)

;; DAP Mode
(require 'dap-python)
(require 'dap-gdb-lldb)
(require 'dap-go)

;; LSP Mode
(require 'lsp-mode)
(require 'lsp-go)
(require 'lsp-cpp)
(require 'lsp-pyls)
(add-hook 'prog-mode-hook #'lsp)


(provide 'my_packages)
;;; my_packages.el ends here
