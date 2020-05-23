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
(doom-themes-neotree-config)
(doom-themes-org-config)

;; Nlinum
(require 'nlinum)
(add-hook 'prog-mode-hook 'nlinum-mode)
(add-hook 'nlinum-mode-hook 'hl-line-mode)

;; Flycheck
(require 'flycheck)
(add-hook 'prog-mode-hook 'flycheck-mode)

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Neotree
(require 'neotree)
(global-set-key (kbd "C-x t") 'neotree-toggle)

;; Helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Diff-hl
(require 'diff-hl)


(provide 'my_packages)
;;; my_packages.el ends here