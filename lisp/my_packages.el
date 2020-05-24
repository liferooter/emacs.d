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

;; Flycheck
(require 'flycheck)

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Neotree
(require 'neotree)
(global-set-key (kbd "C-x t") 'neotree-toggle)

;; Ivy
(require 'ivy)
(require 'counsel)
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)



(provide 'my_packages)
;;; my_packages.el ends here
