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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1c1e1f" "#e74c3c" "#b6e63e" "#e2c770" "#268bd2" "#fb2874" "#66d9ef" "#d6d6d4"])
 '(c-mode-hook '(lsp lsp-ui-mode))
 '(calendar-and-diary-frame-parameters
   '((name . "Календарь")
     (title . "Календарь")
     (height . 28)
     (width . 80)
     (minibuffer)))
 '(calendar-date-style 'european)
 '(calendar-day-abbrev-array ["Вс" "Пн" "Вт" "Ср" "Чт" "Пт" "Сб"])
 '(calendar-day-name-array
   ["Воскресенье" "Понедельник" "Вторник" "Среда" "Четверг" "Пятница" "Суббота"])
 '(calendar-frame-parameters
   '((name . "Календарь")
     (title . "Календарь")
     (height . 10)
     (width . 80)
     (unsplittable . t)
     (minibuffer)
     (vertical-scroll-bars)))
 '(calendar-month-abbrev-array
   ["Янв" "Фев" "Мар" "Апр" "Май" "Июн" "Июл" "Авг" "Сен" "Окт" "Ноя" "Дек"])
 '(calendar-month-name-array
   ["Январь" "Февраль" "Март" "Апрель" "Май" "Июнь" "Июль" "Август" "Сентябрь" "Октябрь" "Ноябрь" "Декабрь"])
 '(calendar-setup 'one-frame)
 '(calendar-week-start-day 1)
 '(centaur-tabs-mode t nil (centaur-tabs))
 '(centaur-tabs-set-bar 'left)
 '(centaur-tabs-set-icons t)
 '(centaur-tabs-set-modified-marker t)
 '(centaur-tabs-show-navigation-buttons t)
 '(centaur-tabs-style "bar")
 '(chess-default-modules '(nil chess-clock))
 '(chess-display-highlight-last-move t)
 '(chess-display-highlight-legal t)
 '(chess-images-default-size 100)
 '(chess-message-language 'russian)
 '(comment-multi-line t)
 '(comment-style 'multi-line)
 '(company-backends
   '(company-bbdb company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev))
 '(company-global-modes t)
 '(company-go-gocode-command "~/go/bin/gocode")
 '(company-go-show-annotation t)
 '(company-idle-delay 0)
 '(company-show-numbers ''t)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-idle-delay 0)
 '(counsel-mode t)
 '(current-language-environment "UTF-8")
 '(cursor-type 'bar)
 '(custom-enabled-themes '(doom-molokai))
 '(custom-safe-themes
   '("25f1b2ace87d23d803b42267fafdc38b31472e444c2aaa9069aa2c06be8955b2" "912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "9f15d03580b08dae41a1e5c1f00d1f1aa99fea121ca32c28e2abec9563c6e32c" "6177ecbffb8f37756012c9ee9fd73fc043520836d254397566e37c6204118852" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "379a804655efccc13a3d446468992bfdfc30ff27d19cfda6f62c7f9c9e7a8a7d" "aa5dee47c85f12d166745ae56c778eb7833df3f6799c2b2d607d5b8da8f5f579" "a92e9da0fab90cbec4af4a2035602208cebf3d071ea547157b2bfc5d9bd4d48d" "3d3807f1070bb91a68d6638a708ee09e63c0825ad21809c87138e676a60bda5d" "1526aeed166165811eefd9a6f9176061ec3d121ba39500af2048073bea80911e" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "f2b56244ecc6f4b952b2bcb1d7e517f1f4272876a8c873b378f5cf68e904bd59" "3c7eef027f94956ea194aafa537c78098ab4cd907a2bb11b0e6c5f42e8a95750" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default))
 '(dap-auto-configure-features
   '(sessions locals breakpoints expressions repl controls tooltip))
 '(dap-auto-configure-mode t)
 '(dap-print-io t)
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
 '(default-input-method nil)
 '(diary-file "~/.diary.gpg")
 '(diary-frame-parameters
   '((name . "Дневник")
     (title . "Дневник")
     (height . 10)
     (width . 80)
     (unsplittable . t)
     (minibuffer)))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-github t)
 '(doom-modeline-indent-info t)
 '(doom-modeline-mode t)
 '(ede-project-directories '("/home/liferooter/Tasks/Classes"))
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(enable-recursive-minibuffers t)
 '(epg-gpg-program "gpg")
 '(exec-path
   '("/home/liferooter/go/bin" "/home/liferooter/.local/bin" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/opt/bin" "/usr/lib/llvm/9/bin" "/usr/libexec/emacs/27.0.91/x86_64-pc-linux-gnu"))
 '(fci-rule-color "#555556")
 '(flycheck-go-errcheck-executable "~/go/bin/errcheck")
 '(flycheck-go-golint-executable "~/go/bin/golint")
 '(flycheck-go-staticcheck-executable "~/go/bin/staticcheck")
 '(flycheck-go-unconvert-executable "~/go/bin/unconvert")
 '(flycheck-go-vet-executable nil)
 '(gdb-enable-debug t)
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(global-anzu-mode t)
 '(global-company-mode nil)
 '(global-diff-hl-mode t)
 '(global-ede-mode t)
 '(global-flycheck-mode t)
 '(global-hl-todo-mode t)
 '(go-mode-hook '(lsp-ui-mode))
 '(helm-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(ivy-rich-mode t)
 '(ivy-use-virtual-buffers t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#525254"))
 '(lsp-clients-go-server "gopls")
 '(lsp-keymap-prefix "C-c C-l")
 '(lsp-lens-auto-enable t)
 '(lsp-pyls-plugins-flake8-enabled t)
 '(lsp-pyls-plugins-jedi-completion-fuzzy nil)
 '(lsp-pyls-plugins-pycodestyle-enabled nil)
 '(lsp-pyls-plugins-pydocstyle-enabled t)
 '(lsp-pyls-plugins-pyflakes-enabled nil)
 '(lsp-pyls-plugins-yapf-enabled t)
 '(lsp-treemacs-sync-mode t)
 '(lunar-phase-names
   '("Новая луна" "Первая четверть" "Полная луна" "Последняя четверть"))
 '(mood-line-mode t)
 '(neo-autorefresh t)
 '(neo-create-file-auto-open t)
 '(neo-hide-cursor t)
 '(neo-smart-open t)
 '(neo-toggle-window-keep-p t)
 '(nlinum-highlight-current-line t)
 '(objed-cursor-color "#e74c3c")
 '(org-mode-hook
   '(#[0 "\300\301\302\303\304$\207"
         [add-hook change-major-mode-hook org-show-all append local]
         5]
     #[0 "\300\301\302\303\304$\207"
         [add-hook change-major-mode-hook org-babel-show-result-all append local]
         5]
     org-babel-result-hide-spec org-babel-hide-all-hashes
     #[0 "\301\211\207"
         [imenu-create-index-function org-imenu-get-tree]
         2]
     visual-line-mode real-auto-save-mode))
 '(org-pretty-entities t)
 '(package-selected-packages
   '(all-the-icons-ivy-rich ivy-rich all-the-icons-ivy centaur-tabs ivy-hydra posframe minions multiple-cursors mood-line company-lsp lsp-ivy lsp-java dap-mode lsp-treemacs lsp-ui pip-requirements lua-mode hl-todo elpy slime-company sudo-edit real-auto-save treemacs-projectile fish-mode counsel-projectile ivy treemacs yasnippet-snippets magit markdown-preview-mode markdown-mode hydra doom-themes go-guru company go-mode diff-hl projectile nlinum solarized-theme solaire-mode flycheck dashboard))
 '(pdf-view-midnight-colors (cons "#d6d6d4" "#1c1e1f"))
 '(pretty-symbol-categories '(lambda relational logical nil))
 '(prog-mode-hook
   '(flycheck-mode nlinum-mode hl-line-mode real-auto-save-mode company-mode yas-minor-mode))
 '(projectile-after-switch-project-hook nil)
 '(projectile-completion-system 'ivy)
 '(projectile-enable-caching t)
 '(projectile-mode t nil (projectile))
 '(rustic-ansi-faces
   ["#1c1e1f" "#e74c3c" "#b6e63e" "#e2c770" "#268bd2" "#fb2874" "#66d9ef" "#d6d6d4"])
 '(scroll-bar-mode nil)
 '(server-after-make-frame-hook '((lambda nil (switch-to-buffer "*dashboard*"))))
 '(shell-file-name "/bin/bash")
 '(show-paren-mode t)
 '(sml/theme 'respectful)
 '(solaire-global-mode t)
 '(tool-bar-mode nil)
 '(treemacs-follow-after-init nil)
 '(treemacs-follow-mode t)
 '(treemacs-project-follow-cleanup t)
 '(treemacs-python-executable "/usr/bin/python")
 '(treemacs-width 25)
 '(vc-annotate-background "#1c1e1f")
 '(vc-annotate-color-map
   (list
    (cons 20 "#b6e63e")
    (cons 40 "#c4db4e")
    (cons 60 "#d3d15f")
    (cons 80 "#e2c770")
    (cons 100 "#ebb755")
    (cons 120 "#f3a73a")
    (cons 140 "#fd971f")
    (cons 160 "#fc723b")
    (cons 180 "#fb4d57")
    (cons 200 "#fb2874")
    (cons 220 "#f43461")
    (cons 240 "#ed404e")
    (cons 260 "#e74c3c")
    (cons 280 "#c14d41")
    (cons 300 "#9c4f48")
    (cons 320 "#77504e")
    (cons 340 "#555556")
    (cons 360 "#555556")))
 '(vc-annotate-very-old-color nil)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "JB  " :slant normal :weight normal :height 128 :width normal))))
 '(ivy-current-match ((t (:underline t)))))

(provide 'init)
;;; init.el ends here
