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
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("ad81688385b8074c03fa75bf16a81c646d7d4cda107a14669a0d9830a9a9dbcf" "7a800d4ca219eeaa19f15f5c0138d738b71b7ce8ce2e25ebcc7acfca18244594" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "29b4f767c48da68f8f3c2bbf0dde2be58e4ed9c97e685af5a7ab7844f0d08b8b" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "badd1a5e20bd0c29f4fe863f3b480992c65ef1fa63951f59aa5d6b129a3f9c4c" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "162201cf5b5899938cfaec99c8cb35a2f1bf0775fc9ccbf5e63130a1ea217213" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "70e7f094987e3c6226c54078dd986e11cab7246ea1c9e58a9907afa90f3c10c9" "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8" "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1" "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "c517e98fa036a0c21af481aadd2bdd6f44495be3d4ac2ce9d69201fcb2578533" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "75b2a02e1e0313742f548d43003fcdc45106553af7283fb5fad74359e07fe0e2" "3cdd0a96236a9db4e903c01cb45c0c111eb1492313a65790adb894f9f1a33b2d" "6adeb971e4d5fe32bee0d5b1302bc0dfd70d4b42bad61e1c346599a6dc9569b5" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "37b6695bae243145fa2dfb41440c204cd22833c25cd1993b0f258905b9e65577" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "a9dc7790550dcdb88a23d9f81cc0333490529a20e160a8599a6ceaf1104192b5" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "3de5c795291a145452aeb961b1151e63ef1cb9565e3cdbd10521582b5fd02e9a" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "7b8f5bbdc7c316ee62f271acf6bcd0e0b8a272fdffe908f8c920b0ba34871d98" default))
 '(display-line-numbers-width 3)
 '(org-agenda-files '("c:/Users/sawye/org/todos.org"))
 '(package-selected-packages
   '(rainbow-mode doom-themes corfu dashboard typescript-mode magit evil-collection evil-org ivy evil-leader gcmh org-roam evil)))

(display-time-mode 1)

(when (file-exists-p "~/.emacs.d/secrets.el")
  (load-file "~/.emacs.d/secrets.el"))

(add-to-list 'load-path "~/.emacs.d/pkgs/ghelp")
(require 'ghelp)
(add-hook 'ghelp-page-mode-hook (lambda () (visual-line-mode 1)))

(setq ring-bell-function 'ignore)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
	  backup-by-copying t    ; Don't delink hardlinks
	  version-control t      ; Use version numbers on backups
	  delete-old-versions t  ; Automatically delete excess backups
	  kept-new-versions 20   ; how many of the newest versions to keep
	  kept-old-versions 5    ; and how many of the old
	  )

(setq auto-save-file-name-transforms
      `((".*" ,
		 temporary-file-directory t)))

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

(defun goto-thoughts ()
  (interactive)
  (find-file "~/org/thoughts.org"))

(setq initial-buffer-choice #'(lambda () (get-buffer-create "*dashboard*")))

(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(require 'dashboard)
(setq dashboard-banner-logo-title "Oh how I wish I were in vim")
(setq dashboard-startup-banner "~/.emacs.d/logo.png")
(setq dashboard-set-footer nil)                              
(setq dashboard-center-content t)
(setq dashboard-items '((agenda . 5)))
(setq dashboard-agenda-sort-strategy '(time-up))

(dashboard-setup-startup-hook)

;; Projectile setup
(require 'projectile)
(projectile-global-mode +1)

(setq projectile-require-project-root t)

(defun get-current-project-dir ()
  (interactive)
  (substring
   (nth 0 (split-string (projectile-project-info) "##"))
   13 -1))

(defun get-current-project-name ()
  (interactive)
  (message
   (file-name-nondirectory
	(directory-file-name (get-current-project-dir)))))

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
  (let* ((script (ivy-read "Select a script to run: " (get-project-scripts)))
		 (path (concat (concat (get-current-project-dir) "scripts/") script)))
    (async-shell-command path (concat "*" (concat script "*")))))

;; Fix annoying thing where cursor can fall out of the right indentation level
(defun fix-cursor-indent ()
  (interactive)
  (indent-according-to-mode)
  (evil-insert 1))

;; Leader key setup
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "<SPC>" 'fix-cursor-indent
  "RET" 'org-capture-finalize
  "re" 'eval-region
  ";" 'delete-other-windows
  "t" 'org-todo
  "dv" 'describe-variable
  "df" 'describe-function
  "dm" 'describe-mode
  "dk" 'describe-key
  "dx" 'describe-package
  "do" 'goto-thoughts

  "ii" 'ghelp-describe-at-point
  "ig" 'xref-goto-xref
  "id" 'xref-find-definitions
  "ir" 'xref-find-references
  "if" 'xref-find-apropos

  "e" 'find-file
  "fs" 'flymake-start
  "fd" 'eldoc-print-current-symbol-info
  "fl" 'flymake-show-buffer-diagnostics
  "fg" 'flymake-goto-diagnostic

  "aa" 'org-agenda-list
  "aw" (lambda () (interactive) (org-agenda-list) (org-agenda-filter))
  "af" 'org-agenda-filter
  "ac" 'org-agenda-filter-remove-all
  "as" 'org-agenda-schedule
  "ad" 'org-agenda-archive
  
  ;; Org functions
  "of" 'org-roam-node-find
  "ov" 'org-tags-sparse-tree
  "oc" 'org-capture
  "oa" 'org-archive-subtree
  "oi" 'org-roam-node-insert
  "ot" 'org-set-tags-command
  "oh" 'org-insert-heading-after-current
  "oo" 'org-global-cycle

  "dd" 'goto-dashboard
  "dc" 'goto-config

  "Q" 'kill-buffer
  "re" 'eval-region
  "c" 'calendar
  "g" 'magit
  "b" 'switch-to-buffer
  
  ;; Special functions
  "ss" 'eshell

  ;; Special functions for ChatGPT
  "sgp" 'chatgpt-shell-prompt
  "sgc" 'chatgpt-shell
  "sgs" 'chatgpt-shell-send-and-review-region

  ;; Project managment functions
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
  "S" 'save-some-buffers
  "TAB" 'indent-region
  "'" 'comment-or-uncomment-region)

(global-evil-leader-mode)
(add-hook 'special-mode-hook (lambda () (visual-line-mode -1)))

;; Mode setup
(evil-mode)
(ivy-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-pair-mode)

(setq default-frame-alist
      '((background-color . "gray12")
        (foreground-color . "gray85")
		(font . "JetBrains Mono-11")
		(fullscreen . maximized)
		(vertical-scroll-bars . nil)))

;; Disable line wrapping globally
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows nil)

(setq-default tab-width 4)

;; Org-Roam setup
(setq org-roam-directory org-directory)
(setq org-agenda-span 'fortnight)
(org-agenda-list)
(org-roam-db-autosync-mode)

;; Keybindings
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "M-k") #'completion-at-point)
(global-set-key (kbd "M-i") #'ghelp-describe-at-point)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Org Capture

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

(defun top-level-headlines (filename level)
  (let ((ast (with-temp-buffer
			   (insert-file-contents filename)
			   (org-mode)
			   (org-element-parse-buffer)))
		(headlines '()))
	(org-element-map ast 'headline
	  (lambda (hl)
		(when (= (org-element-property :level hl) level)
		  (push (org-element-property :raw-value hl) headlines))))
	headlines))

(setq org-capture-templates
	  '(("p" "Project Todo" entry
		 (file+headline "~/org/todos.org" "Tasks")
		 "* TODO %? %^g\nSCHEDULED: %^t" :time-prompt t)
		("t" "Todo" entry
		 (file+headline "~/org/todos.org" "Tasks")
		 "* TODO %? \nSCHEDULED: %^t" :time-prompt t)
		("o" "Thought" entry
		 (file+headline "~/org/thoughts.org" "Thoughts")
		 "* %? %^g\n%U\n%a")))

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
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'typescript-mode-hook 'eglot-ensure)
(fset #'jsonrpc--log-event #'ignore)
(setq eglot-ignored-server-capabilities '(:inlayHintProvider))
(setq eldoc-echo-area-prefer-doc-buffer t
      eldoc-echo-area-use-multiline-p nil)
(add-hook 'eglot-managed-mode-hook
		  (lambda ()
			(eglot-inlay-hints-mode -1)
			(eldoc-mode -1)
			(corfu-mode -1)))
;;(add-hook 'eglot-managed-mode-hook #'corfu-mode)

(setq flymake-no-changes-timeout nil)

(require 'corfu)
(setq corfu-auto t)
(global-corfu-mode 1)

;; Enable line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-width 3)

(defun sawyers-shell-maker-welcome-message (config)
  "Return a welcome message to be printed using CONFIG."
  (format
   ""
   (propertize (shell-maker-config-name config)
               'font-lock-face 'font-lock-comment-face)
   (propertize "help" 'font-lock-face 'italic)
   (shell-maker--propertize-key-binding "-shell-submit" config)))

(setq chatgpt-shell-welcome-function #'sawyers-shell-maker-welcome-message)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
