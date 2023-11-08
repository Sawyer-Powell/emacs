(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dashboard flycheck typescript-mode magit evil-collection evil-org ivy projectile evil-leader lsp-mode gcmh org-roam company evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq ring-bell-function 'ignore)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
)

(setq evil-want-C-u-scroll t)
(setq evil-want-keybinding nil)
(require 'evil)
(evil-set-command-property 'org-open-at-point :jump t)
(evil-collection-init '(calendar calc dired magit))

(setq org-agenda-window-setup 'current-window)

(setq org-link-frame-setup '((vm . vm-visit-folder-other-frame)
 (vm-imap . vm-visit-imap-folder-other-frame)
 (gnus . org-gnus-no-new-news)
 (file . find-file)
 (wl . wl-other-frame)))

(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional calendar))

(defun goto-dashboard ()
  (interactive)
  (dashboard-refresh-buffer)
  (switch-to-buffer "*dashboard*"))

(defun goto-config ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(setq initial-buffer-choice #'(lambda () (get-buffer-create "*dashboard*")))

(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(require 'dashboard)
(setq dashboard-banner-logo-title "Oh how I wish I were in vim")
(setq dashboard-startup-banner "~/.emacs.d/logo.png")
(setq dashboard-set-footer nil)                              
(setq dashboard-center-content t)
(setq dashboard-items '((projects . 5)
                        (agenda . 5) 
                        (recents  . 5)
                        (bookmarks . 5)))

(dashboard-setup-startup-hook)

;; Projectile setup
(require 'projectile)

(setq projectile-require-project-root t)

(defun get-current-project-dir ()
  (substring
   (nth 0 (split-string (projectile-project-info) "##"))
   13 -1))

(defun get-project-scripts ()
  (seq-filter
   (lambda (x) (and
		(not (string= (substring x 0 1) "."))
		(not (string= (substring x 0 1) "#"))))
   (directory-files
    (concat (get-current-project-dir) "scripts/"))))

(defun prompt-project-script (prompt)
  (concat
   (concat (get-current-project-dir) "scripts/")
   (ivy-read prompt (get-project-scripts))))

(defun open-project-script ()
  (interactive)
  (find-file (prompt-project-script "Select a script to open: ")))

(defun run-project-script ()
  (interactive)
  (async-shell-command (prompt-project-script "Select a script to run: ")))

;; Leader key setup
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "O" 'delete-other-windows
  "t" 'org-todo
  "dv" 'describe-variable
  "df" 'describe-function
  "dm" 'describe-mode
  "dk" 'describe-key
  "e" 'find-file
  "a" 'org-agenda-list
  "of" 'org-roam-node-find
  "oc" 'org-agenda-capture
  "oi" 'org-roam-node-insert
  "ot" 'org-roam-dailies-find-today
  "dd" 'goto-dashboard
  "dq" 'kill-buffer
  "dc" 'goto-config
  "re" 'eval-region
  "c" 'calendar
  "g" 'magit
  "b" 'switch-to-buffer
  "s" 'shell
  "pf" 'projectile-find-file
  "pp" 'projectile-switch-project
  "pr" 'run-project-script
  "po" 'open-project-script
  "ps" 'projectile-run-shell
  "pt" 'projectile-test-project
  "pk" 'projectile-kill-buffers
  "q" 'evil-window-delete
  "l" 'evil-window-right
  "h" 'evil-window-left
  "j" 'evil-window-down
  "k" 'evil-window-up
  "L" 'evil-window-move-far-right
  "H" 'evil-window-move-far-left
  "J" 'evil-window-move-far-down
  "K" 'evil-window-move-far-up
  "/" 'evil-window-vsplit
  "." 'evil-window-split
  "w" 'evil-write
  "id" 'lsp-find-definition
  "ir" 'lsp-find-references)

(global-evil-leader-mode)

;; Mode setup
(evil-mode)
(global-company-mode 1)
(projectile-mode +1)
(ivy-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq default-frame-alist
      '((background-color . "gray12")
        (foreground-color . "gray85")
	(font . "JetBrains Mono-11")
	(fullscreen . maximized)
	(vertical-scroll-bars . nil)))

;; Org-Roam setup
(setq org-roam-directory org-directory)
(setq org-agenda-files nil)
(add-to-list 'org-agenda-files (concat org-directory "/notes.org"))
(setq org-default-notes-file (concat org-directory "/notes.org"))
(org-agenda-list)
(org-roam-db-autosync-mode)

;; Keybindings
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Treesitter
(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (cmake "https://github.com/uyha/tree-sitter-cmake")
     (css "https://github.com/tree-sitter/tree-sitter-css")
     (elisp "https://github.com/Wilfred/tree-sitter-elisp")
     (go "https://github.com/tree-sitter/tree-sitter-go")
     (html "https://github.com/tree-sitter/tree-sitter-html")
     (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
     (json "https://github.com/tree-sitter/tree-sitter-json")
     (make "https://github.com/alemuller/tree-sitter-make")
     (markdown "https://github.com/ikatyang/tree-sitter-markdown")
     (python "https://github.com/tree-sitter/tree-sitter-python")
     (toml "https://github.com/tree-sitter/tree-sitter-toml")
     (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
     (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
     (yaml "https://github.com/ikatyang/tree-sitter-yaml")))

;; Lsp setup
(setq lsp-eldoc-enable-hover t)
(setq lsp-signature-auto-activate t) ;; you could manually request them via `lsp-signature-activate`
(setq lsp-signature-render-documentation t)
(setq lsp-headerline-breadcrumb-enable t)

;; Lsp hooks
(add-hook 'typescript-mode-hook 'lsp)
(add-hook 'typescript-mode-hook 'flycheck-mode)
(add-hook 'csharp-mode-hook 'lsp)
(add-hook 'csharp-mode-hook 'flycheck-mode)

;; Enable line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-width 3)
