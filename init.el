;;; init.el --- Initialize Emacs custom modules and customization

;;; Commentary:
;; Use this file only to initialize main modules

;;; Code:

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'my_init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0)
 '(company-show-numbers ''t)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-idle-delay 0)
 '(counsel-mode t)
 '(current-language-environment "UTF-8")
 '(cursor-type 'bar)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default))
 '(dashboard-center-content t)
 '(dashboard-footer-messages
   '("The one true editor, Emacs!" "Who the hell uses VIM anyway? Go Evil!" "Free as free speech, free as free Beer" "Richard Stallman is proud of you" "Happy coding!" "Vi Vi Vi, the editor of the beast" "Welcome to the church of Emacs" "While any text editor can save your files, only Emacs can save your soul" "I showed you my source code,pls respond"))
 '(dashboard-heading-icons
   '((recents . "history")
     (bookmarks . "bookmark")
     (agenda . "calendar")
     (projects . "rocket")
     (registers . "database")))
 '(dashboard-item-generators
   '((recents . dashboard-insert-recents)
     (bookmarks . dashboard-insert-bookmarks)
     (projects . dashboard-insert-projects)
     (agenda . dashboard-insert-agenda)
     (registers . dashboard-insert-registers)))
 '(dashboard-items '((recents . 5) (projects . 5) (agenda . 5)))
 '(dashboard-page-separator "
")
 '(dashboard-set-file-icons t)
 '(dashboard-set-heading-icons t)
 '(dashboard-set-navigator t)
 '(dashboard-startup-banner 'logo)
 '(doom-modeline-github t)
 '(doom-modeline-mode t)
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(enable-recursive-minibuffers t)
 '(global-anzu-mode t)
 '(global-diff-hl-mode nil)
 '(global-ede-mode t)
 '(global-flycheck-mode t)
 '(helm-mode t)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(neo-autorefresh t)
 '(neo-create-file-auto-open t)
 '(neo-hide-cursor t)
 '(neo-smart-open t)
 '(nlinum-highlight-current-line t)
 '(package-selected-packages
   '(hydra ivy doom-themes go-guru highlight-parentheses company-jedi company-go company go-mode diff-hl projectile nlinum solarized-theme solaire-mode flycheck dashboard doom-modeline neotree))
 '(prog-mode-hook
   '(company-mode flycheck-mode nlinum-mode flycheck-mode hl-line-mode))
 '(scroll-bar-mode nil)
 '(solaire-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "JB  " :slant normal :weight normal :height 128 :width normal)))))

(provide 'init)
;;; init.el ends here
